const pageDefinitions = [
  { title: "Overview", path: "pages/overview.html" },
  { title: "Service Definition", path: "pages/service-definition.html" },
  { title: "Operating Model", path: "pages/operating-model.html" },
  { title: "Architecture", path: "pages/architecture.html" },
  { title: "KPIs", path: "pages/kpis.html" },
  { title: "Roadmap", path: "pages/roadmap.html" },
  { title: "Runbooks", path: "pages/runbooks.html" },
  { title: "Templates", path: "pages/templates.html" },
  { title: "Hybrid", path: "pages/hybrid.html" }
];

function getBasePath() {
  let path = window.location.pathname;
  if (path.endsWith("/")) {
    path = path.slice(0, -1);
  }
  if (path.endsWith("/index.html")) {
    path = path.slice(0, -"/index.html".length);
  }
  if (path.includes("/pages/")) {
    path = path.split("/pages/")[0];
  }
  return path || "";
}

function resolveHref(targetPath) {
  const basePath = getBasePath();
  const trimmedBase = basePath.replace(/\/$/, "");
  return `${trimmedBase}/${targetPath}`;
}

function createNavLink(page) {
  const link = document.createElement("a");
  link.href = resolveHref(page.path);
  link.textContent = page.title;
  link.classList.add("nav-link");
  return link;
}

function buildNav() {
  const nav = document.getElementById("nav-links");
  pageDefinitions.forEach((page) => {
    nav.appendChild(createNavLink(page));
  });
}

function setupSearch() {
  const input = document.getElementById("search");
  if (!input) return;
  input.addEventListener("input", (event) => {
    const query = event.target.value.toLowerCase();
    const results = pageDefinitions.filter((page) =>
      page.title.toLowerCase().includes(query)
    );
    const nav = document.getElementById("nav-links");
    nav.innerHTML = "";
    results.forEach((page) => {
      nav.appendChild(createNavLink(page));
    });
  });
}

buildNav();
setupSearch();
