const pages = [
  { title: "Overview", href: "pages/overview.html" },
  { title: "Service Definition", href: "pages/service-definition.html" },
  { title: "Operating Model", href: "pages/operating-model.html" },
  { title: "Architecture", href: "pages/architecture.html" },
  { title: "KPIs", href: "pages/kpis.html" },
  { title: "Roadmap", href: "pages/roadmap.html" },
  { title: "Runbooks", href: "pages/runbooks.html" },
  { title: "Templates", href: "pages/templates.html" },
  { title: "Hybrid", href: "pages/hybrid.html" }
];

function buildNav() {
  const nav = document.getElementById("nav-links");
  pages.forEach((page) => {
    const link = document.createElement("a");
    link.href = page.href;
    link.textContent = page.title;
    nav.appendChild(link);
  });
}

function setupSearch() {
  const input = document.getElementById("search");
  if (!input) return;
  input.addEventListener("input", (event) => {
    const query = event.target.value.toLowerCase();
    const results = pages.filter((page) =>
      page.title.toLowerCase().includes(query)
    );
    const nav = document.getElementById("nav-links");
    nav.innerHTML = "";
    results.forEach((page) => {
      const link = document.createElement("a");
      link.href = page.href;
      link.textContent = page.title;
      nav.appendChild(link);
    });
  });
}

buildNav();
setupSearch();
