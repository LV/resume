// Set document properties
#set document(author: "Luis Victoria", title: "Curriculum Vitae")
#set page(margin: (left: 1cm, right: 1cm, top: 1cm, bottom: 1cm))
#set text(font: "New Computer Modern", size: 11.5pt)
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


// Header
#align(left)[
  #set par(leading: 0.5em)
  #block[
    #text(24pt, weight: "bold")[Luis Victoria]
    #linebreak()
    #text(10pt)[New York City #h(0.5em) | #h(0.5em) #link("mailto:luisvictoriaperez@gmail.com")[luisvictoriaperez\@gmail.com] #h(0.5em) | #h(0.5em) +1 (929) 420-8800 #h(0.5em) | #h(0.5em) #link("https://www.linkedin.com/in/luisvictoria/")[linkedin.com/in/luisvictoria] #h(0.5em) | #h(0.5em) #link("https://github.com/lv")[github.com/lv]]
  ]
]

#v(0.5em)
// Work Experience Section
#text(14pt, weight: "bold")[Work Experience]
#line(length: 100%, stroke: 0.5pt)

// Bloomberg Entry
#grid(
  columns: (auto, 1fr),
  gutter: 1em,
  align(left)[
    *Software Engineer — Market Data Platform, Capacity & Performance*
    #linebreak()
    Bloomberg LP
  ],
  align(right)[
    Feb 2023 - Jul 2026
    #linebreak()
    #text(style: "italic")[New York, NY]
  ]
)
Engineered performance, capacity, scalability, and reliability systems across Bloomberg’s Market Data Platform, spanning Feeds and the Ticker Plant. The platform handled \>700B ticks/day during extreme volatility while maintaining \<6ms median and \<250ms p99.9 latency SLAs.

- *Predictive Capacity Forecasting*: Rewrote a fragile legacy log-scraping storage monitor as a two-part Python system: a fleet-wide scanner writing structured per-database storage and machine metadata to a centralized datastore, and a forecasting service extrapolating rolling usage trends 14 days ahead with automated alerting. Delivered in one week during the April 2025 tariff-driven volatility spike, protecting 1,000+ machines from storage-exhaustion/data-loss risk.
- *Performance Regression Detection*: Applied Bayesian Online Changepoint Detection within Argo-orchestrated workflows to statistically flag anomalous times across 30,000+ tick processor instances, cutting remediation time from days to \<24 hours.
- *Latency Instrumentation Overhaul*: Authored a C++20 envelope-based timestamping framework tracing tick updates stage-by-stage through the Ticker Plant pipeline with $mu$s resolution, enabling latency regression detection and optimization with $< 10 mu$s overhead.
- *Capacity & Load Management*: Assessed CPU, memory, and storage capacity ahead of onboarding new global exchanges and executed targeted cluster splits to offload overloaded machines, avoiding or eliminating SLO breaches with minimal client disruption.
- *Disaster Recovery Performance Resilience*: Automated load reassignment during data-center failover; benchmarked CPU thread-pinning under combined load, informing Linux cgroups-based CPU prioritization to preserve broadcast continuity while controlling dropped requests.

#v(0.5em)
// Farringdon Asset Management Entry
#grid(
  columns: (auto, 1fr),
  gutter: 1em,
  align(left)[
    *Quantitative Developer Intern*
    #linebreak()
    Farringdon Asset Management
  ],
  align(right)[
    May 2019 - Aug 2019
    #linebreak()
    #text(style: "italic")[Singapore]
  ]
)
  - *Back-testing Enhancements*: Extended the firm's Python backtesting engine to support cryptocurrency analysis, integrating market-data pipelines through CCXT and Binance.
  - *Automation with Bloomberg API*: Reduced time to generate client portfolio analysis by 50% for the portfolio management team using information from PORT\<GO\>.

#v(1em)
// Education Section
#text(14pt, weight: "bold")[Education]
#line(length: 100%, stroke: 0.5pt)

#grid(
  columns: (auto, 1fr),
  gutter: 1em,
  align(left)[
    *Business and Computer Science*
    #linebreak()
    Bachelor of Commerce - Sauder School of Business, University of British Columbia
  ],
  align(right)[
    Sep 2018 - Dec 2022
    #linebreak()
    #text(style: "italic")[Vancouver, BC]
  ]
)
  - *Relevant Coursework*: Machine Learning & Data Mining, Matrix Algebra, Calculus III, Empirical Economics, Advanced Algorithmic Design, Advanced Relational Databases.
  - *Sauder Trading Simulation*: Built a Raspberry Pi arbitrage bot for a primitive non-matching order-book simulation, polling every two minutes and executing crossed bid/ask opportunities; placed 1st of 136 students.
