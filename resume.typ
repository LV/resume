// Set document properties
#set document(author: "Luis Victoria", title: "Curriculum Vitae")
#set page(margin: (left: 1cm, right: 1cm, top: 1cm, bottom: 1cm))
#set text(font: "New Computer Modern", size: 9.5pt)

#show link: it => {
  set text(fill: rgb(29, 47, 120))
  underline(it)
}

// Header
#align(left)[
  #set par(leading: 0.5em)
  #block[
    #text(20pt, weight: "bold")[Luis Victoria]
    #linebreak()
    #text(9.5pt)[#link("mailto:luisvictoriaperez@gmail.com")[luisvictoriaperez\@gmail.com] | +1 (929) 420-8800 | #link("https://www.linkedin.com/in/luisvictoria/")[linkedin.com/in/luisvictoria] | #link("https://github.com/lv")[github.com/lv]]
  ]
]

// Work Experience Section
#text(14pt, weight: "bold")[Work Experience]
#line(length: 100%, stroke: 0.5pt)

// Bloomberg Entry
#grid(
  columns: (auto, 1fr),
  gutter: 1em,
  [*Production Engineer*],
  align(right)[
    Feb 2023 - Present
    #linebreak()
    #text(style: "italic")[New York, NY]
  ]
)
#text(style: "italic")[Bloomberg LP]
  - *Latency Optimization*: Maintained strict performance targets of < 6ms median and < 250 max latencies for 99.99% of tick data, ensuring reliable operations across a system handling \~350 billion daily ticks.
  - *Global On-call Lead*: Acted as the primary contact for the Ticker Plant system during 24/7 on-call rotations, leading remediation processes for critical incidents like exchange outages, hardware failures, and performing synchronization tasks to minimize client impact.
  - *Capacity Planning*: Spearheaded evaluations for transitioning disaster recovery infrastructure from 36-core to 56-core machines, leading to projected savings of \~\$8 million USD while meeting compliance standards.
  - *Latency Monitoring Enhancements*: Singlehandedly rewrote and designed a critical high performance per-tick instrumentation tool in C++, delivering real-time tick path latencies with minimal runtime overhead.
  - *Software Rollout Stability*: Co-developed a product to identify and mitigate performance regressions from bad deployments by leveraging Bayesian Online Changepoint Detection, enhancing confidence in shipping and catching regressions in new tick-type rollouts.
  - *Storage Prediction Tool*: Independently designed and implemented a Python tool to forecast machine storage use, deployed across 750 production machines to proactively set off alarms before reaching capacity limits.
  - *Proactive Automation*: Automated various quality control procedures to verify machine synchronization for non-standardized production environments, reducing manual processes averaging 8 minutes down to a single click.

// Farringdon Entry
#grid(
  columns: (auto, 1fr),
  gutter: 1em,
  [*Quantitative Developer Intern*],
  align(right)[
    May 2019 - Aug 2019
    #linebreak()
    #text(style: "italic")[Singapore]
  ]
)
#text(style: "italic")[Farringdon Asset Management]
  - *Back-testing Enhancements*: Extended the firm's back-testing engine to include cryptocurrency asset analysis by integrating new data pipelines using CCTX and Binance, enabling quantitative evaluation of crypto markets.
  - *Automation with Bloomberg API*: Reduced time to generate client portfolio analysis by 50% for the portfolio management team using information from PORT\<GO\>
  - *Technical Research*: Leveraged Bollinger Bands and Stochastic Oscillators to support quantitative decision-making on biomedical pharmaceutical startups.

// Education Section
#text(14pt, weight: "bold")[Education]
#line(length: 100%, stroke: 0.5pt)

#grid(
  columns: (auto, 1fr),
  gutter: 1em,
  [*Business and Computer Science*],
  align(right)[
    Sep 2018 - Dec 2022
    #linebreak()
    #text(style: "italic")[Vancouver, BC]
  ]
)
#text(style: "italic")[University of British Columbia]
  - *Relevant Coursework*: Machine Learning & Data Mining, Advanced Algorithmic Design, Advanced Relational Databases, Theory of Computation, Advanced Software Construction, Functional & Logic Programming, Matrix Algebra, Empirical Economics, Calculus III, Information Systems Analysis & Design
  - *Key Projects*: Automatic Function Composition (#link("https://github.com/LV/FastFuncs")[repo]), Javascript Chess AI w/ Minimax (#link("https://github.com/LV/LuisitoChess")[repo]), Interactive Coding for Kids using NLP (#link("https://github.com/LV/C-Is-For-Coding")[repo]), Prototype Bitcoin Payment Processor (#link("https://github.com/LV/bitlink-prototype")[repo])
  - *Awards*: Blockathon 2019 Champion, Sauder Entrepreneurial Prediction Market 2022 Champion
  - *Extracurricular Activities*: Ilios Investment Club - Head of Technology

// Volunteer Work Section
#text(14pt, weight: "bold")[Volunteer Work]
#line(length: 100%, stroke: 0.5pt)
  - *Fundación ManoloNet*: Developed a Codecademy-like webpage via Django, teaching prospective blind teenagers Python.
  - *Club de Niños y Niñas de México*: Implemented HTTPS using Let's Encrypt and prototyped a redesigned front page.

// Skills Section
#text(14pt, weight: "bold")[Skills]
#line(length: 100%, stroke: 0.5pt)
  - *Fluent Languages*: English, Spanish
  - *Personal Interests*: Football - Center Forward (Singapore Div 1 Champion, Vancouver Div 2 Champion), Basketball - Point Guard (Singapore U21 Club Champion), Golf (18 Handicap), Chess (2000 ELO on Lichess bullet)
