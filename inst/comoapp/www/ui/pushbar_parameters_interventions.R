list(
  pushbar(id = "pushbar_parameters_interventions", from = "right",
          br(),
          fluidRow(
            column(3, 
                   div(class = "box_interventions", h4(icon("hand-paper"), " Handwashing")),
                   sliderInput("hand_eff", label = "Efficacy of handwashing:", value = 20, min = 0, max = 25,
                               step = 1, post = "%", ticks = FALSE),

                   div(class = "box_interventions", h4("Mask Wearing")),
                   sliderInput("mask_eff", label = "Efficacy of mask wearing:", value = 15, min = 0, max = 35,
                               step = 1, post = "%", ticks = FALSE),
                               
                   div(class = "box_interventions", h4(icon("house-user"), "Working at Home")),
                   sliderInput("work_eff", label = "Efficacy of working from home:", value = 85, min = 0, max = 100,
                               step = 1, post = "%", ticks = FALSE),
                   sliderInput("w2h", label = "Home contacts inflation due to working from home:", value = 10, min = 0, max = 100,
                               step = 1, post = "%", ticks = FALSE),

                   div(class = "box_interventions", h4(icon("school"), "School Closures")),
                   sliderInput("s2h", label = "Home contacts inflation due to school closure:", value = 20, min = 0, max = 100,
                               step = 1, post = "%", ticks = FALSE),

                   div(class = "box_interventions", h4("Social Distancing")),
                   sliderInput("dist_eff", label = "Adherence to social distancing:", value = 100, min = 0, max = 100,
                               step = 1, post = "%", ticks = FALSE)
                   ),
            column(3,
                   div(class = "box_interventions", h4(icon("syringe"), "Vaccination")),
                   sliderInput("vac_campaign", label = "Time to reach target coverage:", value = 4, min = 1, max = 52,
                               step = 1, post = " weeks", ticks = FALSE),
                   sliderInput("vac_dur", label = "Duration of efficacious period", value = 100, min = 0, max = 100, step = 0.1, post = " years", ticks = FALSE, width = "75%"),
                   sliderInput("vac_dur_r", label = "Duration of efficacious period if previously infected", value = 100, min = 0, max = 100, step = 0.1, post = "%", ticks = FALSE, width = "75%"),
                   sliderInput("vaccine_eff", label = "Efficacy of vaccine:", value = 100, min = 0, max = 100,
                               step = 1, post = "%", ticks = FALSE),
                   sliderInput("vaccine_eff_r", label = "Efficacy if previously infected", value = 100, min = 0, max = 100, step = 0.1, post = "%", ticks = FALSE, width = "75%"),
                   
                   
                   div(class = "box_interventions", h4(icon("house-user"), 'Shielding the Elderly')),
                   sliderInput("cocoon_eff", label = "Efficacy of elderly shielding:", value = 95, min = 0, max = 100,
                               step = 1, post = "%", ticks = FALSE),
                   sliderInput("age_cocoon", label = "Minimum age for elderly shielding:", value = 70, min = 0, max = 100,
                               step = 5, post = " y.o.", ticks = FALSE)
                   ),
            column(3, 
                   div(class = "box_interventions", h4("Self-isolation if Symptomatic")),
                   sliderInput("selfis_eff", label = "Adherence to self-isolation:", value = 50, min = 0, max = 100,
                               step = 1, post = "%", ticks = FALSE),

                   div(class = "box_interventions", h4("(*Self-isolation) Screening")),
                   sliderInput("screen_overdispersion", label = "Overdispersion of cases around index case. If  1 likelihood same as general population:", value = 4, min = 1, max = 5,
                               step = 0.2, ticks = FALSE),
                   sliderInput("screen_test_sens", label = "Test Sensitivity:", value = 80, min = 0, max = 100,
                               step = 1, post = "%", ticks = FALSE),
                   div(class = "box_interventions", h4("Mass Testing")),
                   sliderInput("mass_test_sens", label = "Sensitivity", value = 80, min = 0, max = 100, step = 1, post = "%", ticks = FALSE),
                   sliderInput("isolation_days", label = "Isolation days", value = 14, min = 0, max = 100, step = 1, post = " days", ticks = FALSE)
                   ),
            column(3, 
                   div(class = "box_interventions", h4("(*Self-isolation) Household Isolation")),
                   sliderInput("quarantine_days", label = "Days in isolation for average person:", value = 14, min = 1, max = 21,
                               step = 1, post = " days", ticks = FALSE),
                   sliderInput("quarantine_effort", label = "Days to implement maximum quarantine coverage:", value = 2, 
                               min = 1, max = 5, step = 1, post = " days", ticks = FALSE),
                   sliderInput("quarantine_eff_other", label = "Decrease in the number of other contacts when quarantined:", value = 20, 
                               min = 0, max = 100, step = 5, post = "%", ticks = FALSE),
                   sliderInput("quarantine_eff_home", label = "Increase in the number of contacts at home when quarantined:", value = 100, 
                               min = 0, max = 100, step = 5, post = "%", ticks = FALSE),

                   div(class = "box_interventions", h4("Dexamethasone")),
                   sliderInput("dexo2", label = "Relative risk of dying if needing O2 and taking Dex", value =  82, min = 0, max = 100, step = 1, post = "%", ticks = FALSE),
                   sliderInput("dexv", label = "Relative risk of dying if needing ventilation and taking Dex", value = 64 , min = 0, max = 100, step = 1, post = "%", ticks = FALSE),
                   sliderInput("dexo2c", label = "Relative risk of dying if needing  but not receivingO2 and taking Dex", value = 82, min = 0, max = 100, step = 1, post = "%", ticks = FALSE),
                   sliderInput("dexvc", label = "Relative risk of dying if needing but not receiving ventilation and taking Dex", value = 64, min = 0, max = 100, step = 1, post = "%", ticks = FALSE),
                   sliderInput("vent_dex", label = "Change in ventilation requirement if given Dex", value = 87, min = 0, max = 100, step = 1, post = "%", ticks = FALSE)
            )
          ),
          div(class = "closebutton", actionButton("close_interventions_param", label = span(icon('times'), " Close (Esc.)"), class = "btn-danger btn-sm"))
  )
)
