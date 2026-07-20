// Set document properties
#set document(author: "Luis Victoria", title: "Curriculum Vitae")
#set page(margin: (left: 1cm, right: 1cm, top: 1cm, bottom: 1cm))
#set text(font: "New Computer Modern", size: 9.5pt)
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
    #text(9.5pt)[#link("mailto:luisvictoriaperez@gmail.com")[luisvictoriaperez\@gmail.com] #h(0.5em) | #h(0.5em) +1 (929) 420-8800 #h(0.5em) | #h(0.5em) #link("https://www.linkedin.com/in/luisvictoria/")[linkedin.com/in/luisvictoria] #h(0.5em) | #h(0.5em) #link("https://github.com/lv")[github.com/lv]]
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
    *Software Engineer — Site Reliability & Performance, Ticker Plant*
    #linebreak()
    Bloomberg LP
  ],
  align(right)[
    Feb 2023 - Jul 2026
    #linebreak()
    #text(style: "italic")[New York, NY]
  ]
)
Oversaw performance, scalability, and reliability of Bloomberg’s Market Data Platform across its entire production fleet, spanning Feeds (exchange connectivity/parsing) and the Ticker Plant (real-time price data storage/streaming). Focused on end-to-end latencies and capacity. The infrastructure ingested and standardized exchange data before streaming it to clients/internal systems. Handled \>700B ticks per day during extreme market volatility without outages, maintaining strict SLAs (\<6ms median, \<250ms at 99.9%).

- *Latency Instrumentation Overhaul*: Authored a C++20 envelope-based time-stamping framework tracing tick updates stage-by-stage through the Ticker Plant pipeline with $mu$s resolution, enabling latency regression detection and optimization with $< 10 mu$s overhead.

- *Performance Regression Detection*: Applied #link("https://arxiv.org/abs/0710.3742")[Bayesian Online Changepoint Detection] within Argo-orchestrated workflows to statistically flag anomalous times across 30,000+ tick processor instances, cutting remediation time from days to \<24 hours.

- *Predictive Capacity Forecasting*: Diagnosed and rewrote a broken, fragile storage-monitoring pipeline (originally reliant on legacy log scraping) as a two part Python system: a fleet-wide filesystem scanner logging structured per-database storage and machine metadata to a centralized datastore, and a forecasting service extrapolating rolling usage trends 14 days ahead with automated alerting. Delivered in one week during the April 2025 tariff-driven volatility spike, preventing catastrophic data loss across 1,000+ machines.

- *Disaster Recovery Performance Resilience*: Automated a previously manual process for reassigning load to/from the cluster's real-time broadcast ('monitor') machine during data center failover events, removing error-prone manual on-call intervention. Benchmarked CPU thread-pinning thresholds to guarantee broadcast continuity under combined load while minimizing the resulting tradeoff in dropped requests, informing adoption of Linux cgroups-based CPU prioritization within the trading infrastructure stack.

- *Exchange Onboarding*: Assessed CPU, memory, and storage capacity for Ticker Plant clusters ahead of onboarding new global exchanges, using historical telemetry patterns and comparative load analysis against existing exchanges to gauge scalability and avoid SLO breaches.

- *Cluster Load Balancing*: Executed targeted cluster splits to offload overloaded machines, eliminating persistent SLO breaches with minimal client disruption.

- *Crisis & Oncall Leadership*: Oncall 8hrs every 1.5 weeks as part of 24/7 follow-the-sun coverage, mitigating client impact, isolating bad data, performing live syncs, and leading organization-wide outage recovery efforts under intense market conditions.

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
  - *Back-testing Enhancements*: Extended the firm's Python-based back-testing engine to include cryptocurrency asset analysis by integrating new data pipelines using CCTX and Binance, enabling quantitative evaluation of crypto markets.

  - *Automation with Bloomberg API*: Reduced time to generate client portfolio analysis by 50% for the portfolio management team using information from PORT\<GO\>.

  - *Technical Research*: Leveraged Bollinger Bands and Stochastic Oscillators to support quantitative decision-making on biomedical pharmaceutical startups.

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
  - *Relevant Coursework*: Machine Learning & Data Mining, Advanced Algorithmic Design, Advanced Relational Databases, Theory of Computation, Functional & Logic Programming, Matrix Algebra, Empirical Economics, Calculus III.

  - *Sauder Trading Simulation (1st of 136 students)*: Built a Raspberry Pi bot to poll a primitive, non-matching order-book trading platform every 2 minutes, detecting and executing on crossed bid/ask orders to run an automated arbitrage, outperforming classmates' fundamentals-based strategies through market-structure exploitation alone.
