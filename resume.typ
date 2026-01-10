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
    *Production Engineer*
    #linebreak()
    Bloomberg LP
  ],
  align(right)[
    Feb 2023 - Present
    #linebreak()
    #text(style: "italic")[New York, NY]
  ]
)
Overseeing performance, scalability, and reliability of Bloomberg’s Market Data Platform across its entire production fleet, spanning Feeds (exchange connectivity/parsing) and the Ticker Plant (real-time price data storage/streaming). Focused on end-to-end latencies and capacity. The infrastructure ingests and standardizes exchange data before streaming it to clients/internal systems. Handles \>700B ticks per day during extreme market volatility without outages, maintaining strict SLAs (\<6ms median, \<250ms at 99.9%).

- *Latency Instrumentation Overhaul*: Authored a C++20 envelope-based time-stamping framework tracing tick updates stage-by-stage through the Ticker Plant pipeline with µs resolution, enabling latency regression detection and optimization with near-zero overhead.

- *Performance Regression Detection*: Applied #link("https://arxiv.org/abs/0710.3742")[Bayesian Online Changepoint Detection] within Argo-orchestrated workflows to statistically flag anomalous times across 30,000+ tick processor instances, cutting remediation time from days to \<24 hours.

- *Predictive Capacity Forecasting*: Built a Python system capturing filesystem metadata on 1,000+ Ticker Plant machines to project storage usage 14 days ahead. During Liberation Day tariffs (extreme market activity), the system autonomously triggered proactive alerts, preventing preventing catastrophic data loss.

- *Disaster Recovery Performance Resilience*: Designed stress-testing framework to evaluate 56-core for OPRA DR compliance, avoiding failover latency spikes and potentially saving millions in infrastructure costs.

- *Exchange Onboarding*: Concuct CPU, memory, and storage projections when onboaring new global exchanges to ensure scalability in Ticker Plant clusters without SLO breaches.

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
  - *Back-testing Enhancements*: Extended the firm's back-testing engine to include cryptocurrency asset analysis by integrating new data pipelines using CCTX and Binance, enabling quantitative evaluation of crypto markets.
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
  - *Relevant Coursework*: Machine Learning & Data Mining, Advanced Algorithmic Design, Advanced Relational Databases, Theory of Computation, Advanced Software Construction, Functional & Logic Programming, Matrix Algebra, Empirical Economics, Calculus III, Information Systems Analysis & Design.
  - *Key Projects*: #link("https://github.com/LV/FastFuncs")[Automatic Function Composition], #link("https://github.com/LV/LuisitoChess")[Javascript Chess AI via Minimax], #link("https://github.com/LV/C-Is-For-Coding")[Interactive Coding Environment for Kids using NLP], #link("https://github.com/LV/bitlink-prototype")[Prototype Bitcoin-to-Fiat Payment Processor].
  - *Awards*: Blockathon 2019 Champion, Sauder Entrepreneurial Prediction Market 2022 Champion.
  - *Extracurricular Activities*: Ilios Investment Club - Head of Technology.

#v(1em)
// Skills Section
#text(14pt, weight: "bold")[Skills]
#line(length: 100%, stroke: 0.5pt)
  - *Fluent Languages*: English, Spanish.
  - *Technologies*: C++20, Python 3, Bloomberg Terminal.
  - *Personal Interests*: Football (Soccer) - Center Forward & Goal Keeper (Champion in Singapore Div 1 & Vancouver Div 2), Basketball - Point Guard (Singapore U21 Club Champion), Golf (#link("https://www.ghin.com/golfer-lookup/golfer/53616c7465645f5f964e0abb7685ebdae96548cca77d43d431d31cd32b1bc7c8/club/23461")[19.3 GHIN Handicap]), Chess (#link("https://lichess.org/@/lavp")[2000 ELO on Lichess Bullet]).
