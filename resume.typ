// Set document properties
#set document(author: "Luis Victoria", title: "Luis Victoria - Resume", date: none)
#set page(margin: (left: 1cm, right: 1cm, top: 1cm, bottom: 1cm))
#set text(font: "New Computer Modern", size: 11pt)
#set text(hyphenate: false)
#set par(justify: true)


// Override properties
#show link: it => {
  set text(fill: rgb(29, 47, 120))
  underline(it)
}

#show line: it => {
  v(-1.25em)
  it
  v(0em)
}


// Helpers
#let section-gap = 0.5em
#let entry-gap = 0.5em
#let sep = [#h(0.1em)|#h(0.1em)]

#let section(title) = {
  v(section-gap)
  text(14pt, weight: "bold", title)
  line(length: 100%, stroke: 0.5pt)
}

#let entry(title: none, org: none, dates: none, location: none) = grid(
  columns: (auto, 1fr),
  gutter: 1em,
  align(left)[
    #strong(title)
    #linebreak()
    #org
  ],
  align(right)[
    #dates
    #linebreak()
    #text(style: "italic", location)
  ],
)


// Header
#align(center)[
  #set par(leading: 0.5em)
  #block[
    #text(24pt, weight: "bold")[Luis Victoria]
    #linebreak()
    #text(10pt)[New York, NY #sep US~Citizen #sep (929) 420-8800 #sep #link("mailto:luisvictoriaperez@gmail.com")[luisvictoriaperez\@gmail.com] \
    #link("https://luis.vi")[luis.vi] #sep #link("https://www.linkedin.com/in/luisvictoria/")[linkedin.com/in/luisvictoria] #sep #link("https://github.com/lv")[github.com/lv]]
  ]
]


// Body
#section[Work Experience]

#entry(
  title: [Software Engineer — Market Data Platform, Capacity & Performance],
  org: [Bloomberg LP],
  dates: [Feb 2023 -- Jul 2026],
  location: [New York, NY],
)
Engineered performance, capacity, and reliability systems for Bloomberg’s latency-sensitive, distributed Market Data Platform, spanning Feeds and the Ticker Plant. The platform handled \>700B ticks/day during extreme volatility while maintaining \<6~ms median and \<250~ms p99.9 latency SLAs.

- *Capacity Planning & Cluster Rollouts*: Assessed CPU, memory, and storage headroom ahead of onboarding new global exchanges; owned staged multi-region rollouts of cluster splits and new clusters, rebalancing workloads off overloaded machines to avoid SLO breaches with minimal client disruption.
- *Workload Prioritization & Failover*: Automated load reassignment across data centers during failover; benchmarked CPU thread-pinning under combined load, informing Linux cgroups-based CPU prioritization that preserved critical broadcast traffic while bounding dropped requests.
- *Predictive Capacity Forecasting*: Rewrote a fragile legacy log-scraping storage monitor as a two-part Python system: a fleet-wide scanner writing structured per-database storage and machine metadata to a centralized datastore, and a forecasting service extrapolating rolling usage trends 14 days ahead with automated alerting. Delivered in one week during the April 2025 tariff-driven volatility spike, protecting 1,000+ machines from storage-exhaustion/data-loss risk.
- *Performance Regression Detection*: Built a statistical regression-detection pipeline on Kubernetes-native Argo Workflows, applying Bayesian Online Changepoint Detection to flag anomalous processing latencies across 30,000+ tick processor instances; cut remediation time from days to \<24~hours.
- *Latency Instrumentation & Observability*: Authored a C++20 envelope-based timestamping framework tracing tick updates stage-by-stage through the Ticker Plant pipeline with #sym.mu;s resolution, enabling latency regression detection and optimization with \<10~#sym.mu;s overhead.
- *Production & Incident Ownership*: On-call engineer in 24/7 follow-the-sun rotation for Bloomberg’s Market Data Platform; isolated bad data, performed live synchronization and recovery, and drove #box[root-cause] analysis for major outages under volatile market conditions.

#v(entry-gap)

#entry(
  title: [Quantitative Developer Intern],
  org: [Farringdon Asset Management],
  dates: [May 2019 -- Aug 2019],
  location: [Singapore],
)
- *Automation with Bloomberg API*: Reduced time to generate client portfolio analysis by 50% for the portfolio management team using information from PORT\<GO\>.
- *Backtesting Enhancements*: Extended the firm's Python backtesting engine to support cryptocurrency analysis, integrating market-data pipelines through CCXT and Binance.


#section[Education]

#entry(
  title: [Business and Computer Science],
  org: [Bachelor of Commerce, Sauder School of Business, University of British Columbia],
  dates: [Sep 2018 -- Dec 2022],
  location: [Vancouver, BC],
)
- *Relevant Coursework*: Machine Learning & Data Mining, Matrix Algebra, Calculus III, Empirical Economics, Advanced Algorithmic Design, Advanced Relational Databases.
- *Sauder Trading Simulation*: Built a Raspberry Pi arbitrage bot for a non-matching #box[order-book] simulation, polling every 2~min and executing crossed bid/ask opportunities; placed 1st of 136 students.


#section[Skills]

*Programming Languages*: C++20, Python, SQL (PostgreSQL) \
*Tools*: Linux, Grafana, Humio (LogScale), Jenkins, Git, pytest, pydantic, uv, Ruff, Argo Workflows
