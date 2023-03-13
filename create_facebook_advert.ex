%{
  description: "",
  disconnected_steps: [],
  id: "create_facebook_advert",
  name: "create_facebook_advert",
  root_step: "starting_step",
  source: %{},
  steps: %{
    "access_token" => %{
      "aspects" => [],
      "branch" => [],
      "config" => [
        input: nil,
        module: %{
          group_name: "Unknown",
          submodule: %{
            function: %{function_inner: "identity/1"},
            submodule_inner: "Elixir.Function"
          }
        },
        module_function_text: "Function.identity/1",
        source: "custom_text_input"
      ],
      "id" => "b3abe93c256842e9ad6e0917c4d11a73",
      "inner" => [],
      "input" => nil,
      "name" => "access_token",
      "result" => nil,
      "result_function" => nil,
      "settings" => [
        [
          :value,
          "EABZARULVZCm8MBALgASAiuODPTz9GyUJySDnYfPpr552oeUkmah1tGIoNQwgKijMHxZAmGsBQa4KCRYQ0f46mRzPIJSG6rzXdZCFtwgI5mBAlwZCPTSf10QtDhlLAOzWozwW3Fby4S7oNqTkMmQ0bEr8M4OeN3HIvJdHhsHTSHz8s28GywoN3"
        ],
        "custom_text_input",
        Function,
        "identity",
        1
      ],
      "tags" => [],
      "use" => "Trixta.Steps.LibraryCode.V_1_0_0",
      "version" => "auto:6a13a8a386924158af8c5ceb05e8bde7"
    },
    "ad" => %{
      "aspects" => [],
      "branch" => [],
      "config" => [input: nil],
      "id" => "3956003b5a414a318bf31e4cfca5350a",
      "inner" => [:create_ad, :create_ad_http],
      "input" => nil,
      "name" => "ad",
      "result" => nil,
      "result_function" => nil,
      "settings" => [],
      "tags" => [],
      "use" => "Trixta.Steps.Sequence.V_0_0_1",
      "version" => "auto:6a13a8a386924158af8c5ceb05e8bde7"
    },
    "adset" => %{
      "aspects" => [],
      "branch" => [],
      "config" => [input: nil],
      "id" => "4e7ba4cdb61a4b8f93c12bff6536bc91",
      "inner" => [:create_adset, :adset_http],
      "input" => nil,
      "name" => "adset",
      "result" => nil,
      "result_function" => nil,
      "settings" => [],
      "tags" => [],
      "use" => "Trixta.Steps.Sequence.V_0_0_1",
      "version" => "auto:6a13a8a386924158af8c5ceb05e8bde7"
    },
    "adset_http" => %{
      "aspects" => [],
      "branch" => [],
      "config" => [
        input: nil,
        authorization: %{type: "No Auth"},
        body: %{
          trixta_dynamic: %{input_type: "last_result_of", step_name: :create_adset},
          trixta_dynamic_on: true,
          trixta_static: %{}
        },
        headers: %{
          trixta_dynamic: %{input_type: "none"},
          trixta_dynamic_on: false,
          trixta_static: [
            %{
              "key" => "Content-Type",
              "value" => %{
                "trixta_dynamic" => %{"input_type" => "none"},
                "trixta_dynamic_on" => false,
                "trixta_static" => "application/json"
              }
            },
            %{
              "key" => "Accept-Type",
              "value" => %{
                "trixta_dynamic" => %{"input_type" => "none"},
                "trixta_dynamic_on" => false,
                "trixta_static" => "application/json"
              }
            }
          ]
        },
        method: :post,
        options: %{
          trixta_dynamic: %{input_type: "none"},
          trixta_dynamic_on: false,
          trixta_static: []
        },
        url: %{
          trixta_dynamic: %{input_type: "none"},
          trixta_dynamic_on: false,
          trixta_static: [
            %{
              "trixta_dynamic" => %{"input_type" => "none"},
              "trixta_dynamic_on" => false,
              "trixta_static" => "https://graph.facebook.com/v16.0/act_912169106589507/adsets"
            }
          ]
        }
      ],
      "id" => "a17a9c10048345d49be468ac299fadee",
      "inner" => [],
      "input" => nil,
      "name" => "adset_http",
      "result" => nil,
      "result_function" => nil,
      "settings" => [
        :post,
        [
          [TrixtaSpaceWeb.Step.Input.None.V_0_0_1],
          false,
          [
            [
              [TrixtaSpaceWeb.Step.Input.None.V_0_0_1],
              false,
              "https://graph.facebook.com/v16.0/act_912169106589507/adsets"
            ]
          ]
        ],
        [[:last_result_of, :create_adset], true, {:%{}, [], []}],
        [
          [TrixtaSpaceWeb.Step.Input.None.V_0_0_1],
          false,
          [
            {"Content-Type",
             [[TrixtaSpaceWeb.Step.Input.None.V_0_0_1], false, "application/json"]},
            {"Accept-Type", [[TrixtaSpaceWeb.Step.Input.None.V_0_0_1], false, "application/json"]}
          ]
        ],
        [[TrixtaSpaceWeb.Step.Input.None.V_0_0_1], false, []],
        ["No Auth"]
      ],
      "tags" => [],
      "use" => "Trixta.Steps.HttpRequest.Request.V_1_3_0",
      "version" => "auto:6a13a8a386924158af8c5ceb05e8bde7"
    },
    "campaign" => %{
      "aspects" => [],
      "branch" => [],
      "config" => [input: nil],
      "id" => "7c94f4cfb65f4c4bb3bdcef99e25f8d4",
      "inner" => [:create_campaign, :create_campaign_http],
      "input" => nil,
      "name" => "campaign",
      "result" => nil,
      "result_function" => nil,
      "settings" => [],
      "tags" => [],
      "use" => "Trixta.Steps.Sequence.V_0_0_1",
      "version" => "auto:6a13a8a386924158af8c5ceb05e8bde7"
    },
    "create_ad" => %{
      "aspects" => [],
      "branch" => [],
      "config" => [
        input: nil,
        module: %{
          group_name: "Unknown",
          submodule: %{
            function: %{function_inner: "create_ad_body/1"},
            submodule_inner: "Elixir.TrixtaSpaceWeb.FacebookHelpers"
          }
        },
        module_function_text: "TrixtaSpaceWeb.FacebookHelpers.create_ad_body/1",
        source: "custom_text_input"
      ],
      "id" => "3825b8735da94e769c714372eb71dc6a",
      "inner" => [],
      "input" => nil,
      "name" => "create_ad",
      "result" => nil,
      "result_function" => nil,
      "settings" => [
        [
          :combine,
          [
            [
              :merge,
              [
                [["access_token"], [:last_result_of, :access_token]],
                [["name"], [:value, "mmyadex33"]],
                [["adset_id"], [:field_in_last_result_of, :adset_http, ["response_body", "id"]]],
                [
                  ["creative_id"],
                  [:field_in_last_result_of, :create_creative_http, ["response_body", "id"]]
                ]
              ]
            ]
          ]
        ],
        "custom_text_input",
        TrixtaSpaceWeb.FacebookHelpers,
        "create_ad_body",
        1
      ],
      "tags" => [],
      "use" => "Trixta.Steps.LibraryCode.V_1_0_0",
      "version" => "auto:6a13a8a386924158af8c5ceb05e8bde7"
    },
    "create_ad_http" => %{
      "aspects" => [],
      "branch" => [],
      "config" => [
        input: nil,
        authorization: %{type: "No Auth"},
        body: %{
          trixta_dynamic: %{input_type: "last_result_of", step_name: :create_ad},
          trixta_dynamic_on: true,
          trixta_static: %{}
        },
        headers: %{
          trixta_dynamic: %{input_type: "none"},
          trixta_dynamic_on: false,
          trixta_static: [
            %{
              "key" => "Content-Type",
              "value" => %{
                "trixta_dynamic" => %{"input_type" => "none"},
                "trixta_dynamic_on" => false,
                "trixta_static" => "application/json"
              }
            },
            %{
              "key" => "Accept-Type",
              "value" => %{
                "trixta_dynamic" => %{"input_type" => "none"},
                "trixta_dynamic_on" => false,
                "trixta_static" => "application/json"
              }
            }
          ]
        },
        method: :post,
        options: %{
          trixta_dynamic: %{input_type: "none"},
          trixta_dynamic_on: false,
          trixta_static: []
        },
        url: %{
          trixta_dynamic: %{input_type: "none"},
          trixta_dynamic_on: false,
          trixta_static: [
            %{
              "trixta_dynamic" => %{"input_type" => "none"},
              "trixta_dynamic_on" => false,
              "trixta_static" => "https://graph.facebook.com/v16.0/act_912169106589507/ads"
            }
          ]
        }
      ],
      "id" => "a7af9c69734e4282b493fbea0d111a63",
      "inner" => [],
      "input" => nil,
      "name" => "create_ad_http",
      "result" => nil,
      "result_function" => nil,
      "settings" => [
        :post,
        [
          [TrixtaSpaceWeb.Step.Input.None.V_0_0_1],
          false,
          [
            [
              [TrixtaSpaceWeb.Step.Input.None.V_0_0_1],
              false,
              "https://graph.facebook.com/v16.0/act_912169106589507/ads"
            ]
          ]
        ],
        [[:last_result_of, :create_ad], true, {:%{}, [], []}],
        [
          [TrixtaSpaceWeb.Step.Input.None.V_0_0_1],
          false,
          [
            {"Content-Type",
             [[TrixtaSpaceWeb.Step.Input.None.V_0_0_1], false, "application/json"]},
            {"Accept-Type", [[TrixtaSpaceWeb.Step.Input.None.V_0_0_1], false, "application/json"]}
          ]
        ],
        [[TrixtaSpaceWeb.Step.Input.None.V_0_0_1], false, []],
        ["No Auth"]
      ],
      "tags" => [],
      "use" => "Trixta.Steps.HttpRequest.Request.V_1_3_0",
      "version" => "auto:6a13a8a386924158af8c5ceb05e8bde7"
    },
    "create_adset" => %{
      "aspects" => [],
      "branch" => [],
      "config" => [
        input: nil,
        module: %{
          group_name: "Unknown",
          submodule: %{
            function: %{function_inner: "create_adset_body/1"},
            submodule_inner: "Elixir.TrixtaSpaceWeb.FacebookHelpers"
          }
        },
        module_function_text: "TrixtaSpaceWeb.FacebookHelpers.create_adset_body/1",
        source: "custom_text_input"
      ],
      "id" => "ce0a56f444dc4cad89f35f158db2ac3b",
      "inner" => [],
      "input" => nil,
      "name" => "create_adset",
      "result" => nil,
      "result_function" => nil,
      "settings" => [
        [
          :combine,
          [
            [
              :merge,
              [
                [["name"], [:value, "adsetex33"]],
                [["bid_amount"], [:value, 2]],
                [["daily_budget"], [:value, 100_000]],
                [
                  ["campaign_id"],
                  [:field_in_last_result_of, :create_campaign_http, ["response_body", "id"]]
                ],
                [
                  ["targeting"],
                  [
                    :value,
                    "{\"geo_locations\": {\"countries\":[\"US\"]}, \"interests\": [{\"id\": 6003139266461, \"name\": \"Movies\"}]}"
                  ]
                ],
                [["access_token"], [:last_result_of, :access_token]]
              ]
            ]
          ]
        ],
        "custom_text_input",
        TrixtaSpaceWeb.FacebookHelpers,
        "create_adset_body",
        1
      ],
      "tags" => [],
      "use" => "Trixta.Steps.LibraryCode.V_1_0_0",
      "version" => "auto:6a13a8a386924158af8c5ceb05e8bde7"
    },
    "create_campaign" => %{
      "aspects" => [],
      "branch" => [],
      "config" => [
        input: nil,
        module: %{
          group_name: "Unknown",
          submodule: %{
            function: %{function_inner: "create_campaign_body/1"},
            submodule_inner: "Elixir.TrixtaSpaceWeb.FacebookHelpers"
          }
        },
        module_function_text: "TrixtaSpaceWeb.FacebookHelpers.create_campaign_body/1",
        source: "custom_text_input"
      ],
      "id" => "51b9f8b565f2419f8a0aa70adcb02161",
      "inner" => [],
      "input" => nil,
      "name" => "create_campaign",
      "result" => nil,
      "result_function" => nil,
      "settings" => [
        [
          :combine,
          [
            [
              :merge,
              [
                [["name"], [:value, "merge_based_ex"]],
                [["access_token"], [:last_result_of, :access_token]]
              ]
            ]
          ]
        ],
        "custom_text_input",
        TrixtaSpaceWeb.FacebookHelpers,
        "create_campaign_body",
        1
      ],
      "tags" => [],
      "use" => "Trixta.Steps.LibraryCode.V_1_0_0",
      "version" => "auto:6a13a8a386924158af8c5ceb05e8bde7"
    },
    "create_campaign_http" => %{
      "aspects" => [],
      "branch" => [],
      "config" => [
        input: nil,
        authorization: %{type: "No Auth"},
        body: %{
          trixta_dynamic: %{input_type: "last_result_of", step_name: :create_campaign},
          trixta_dynamic_on: true,
          trixta_static: %{}
        },
        headers: %{
          trixta_dynamic: %{input_type: "none"},
          trixta_dynamic_on: false,
          trixta_static: [
            %{
              "key" => "Content-Type",
              "value" => %{
                "trixta_dynamic" => %{"input_type" => "none"},
                "trixta_dynamic_on" => false,
                "trixta_static" => "application/json"
              }
            },
            %{
              "key" => "Accept-Type",
              "value" => %{
                "trixta_dynamic" => %{"input_type" => "none"},
                "trixta_dynamic_on" => false,
                "trixta_static" => "application/json"
              }
            }
          ]
        },
        method: :post,
        options: %{
          trixta_dynamic: %{input_type: "none"},
          trixta_dynamic_on: false,
          trixta_static: []
        },
        url: %{
          trixta_dynamic: %{input_type: "none"},
          trixta_dynamic_on: false,
          trixta_static: [
            %{
              "trixta_dynamic" => %{"input_type" => "none"},
              "trixta_dynamic_on" => false,
              "trixta_static" => "https://graph.facebook.com/v16.0/act_912169106589507/campaigns"
            }
          ]
        }
      ],
      "id" => "c0523122f7ed4180841f5d381ee0a793",
      "inner" => [],
      "input" => nil,
      "name" => "create_campaign_http",
      "result" => nil,
      "result_function" => nil,
      "settings" => [
        :post,
        [
          [TrixtaSpaceWeb.Step.Input.None.V_0_0_1],
          false,
          [
            [
              [TrixtaSpaceWeb.Step.Input.None.V_0_0_1],
              false,
              "https://graph.facebook.com/v16.0/act_912169106589507/campaigns"
            ]
          ]
        ],
        [[:last_result_of, :create_campaign], true, {:%{}, [], []}],
        [
          [TrixtaSpaceWeb.Step.Input.None.V_0_0_1],
          false,
          [
            {"Content-Type",
             [[TrixtaSpaceWeb.Step.Input.None.V_0_0_1], false, "application/json"]},
            {"Accept-Type", [[TrixtaSpaceWeb.Step.Input.None.V_0_0_1], false, "application/json"]}
          ]
        ],
        [[TrixtaSpaceWeb.Step.Input.None.V_0_0_1], false, []],
        ["No Auth"]
      ],
      "tags" => [],
      "use" => "Trixta.Steps.HttpRequest.Request.V_1_3_0",
      "version" => "auto:6a13a8a386924158af8c5ceb05e8bde7"
    },
    "create_creative" => %{
      "aspects" => [],
      "branch" => [],
      "config" => [
        input: nil,
        module: %{
          group_name: "Unknown",
          submodule: %{
            function: %{function_inner: "create_creative_link_body/1"},
            submodule_inner: "Elixir.TrixtaSpaceWeb.FacebookHelpers"
          }
        },
        module_function_text: "TrixtaSpaceWeb.FacebookHelpers.create_creative_link_body/1",
        source: "custom_text_input"
      ],
      "id" => "de1773ac7ba042c7b7ac562375ae992a",
      "inner" => [],
      "input" => nil,
      "name" => "create_creative",
      "result" => nil,
      "result_function" => nil,
      "settings" => [
        [
          :combine,
          [
            [
              :merge,
              [
                [["name"], [:value, "createive33"]],
                [["link"], [:value, "http://www.google.com"]],
                [["message"], [:value, "Contact us now!"]],
                [["page_id"], [:value, "117073034655216"]],
                [["access_token"], [:last_result_of, :access_token]]
              ]
            ]
          ]
        ],
        "custom_text_input",
        TrixtaSpaceWeb.FacebookHelpers,
        "create_creative_link_body",
        1
      ],
      "tags" => [],
      "use" => "Trixta.Steps.LibraryCode.V_1_0_0",
      "version" => "auto:6a13a8a386924158af8c5ceb05e8bde7"
    },
    "create_creative_http" => %{
      "aspects" => [],
      "branch" => [],
      "config" => [
        input: nil,
        authorization: %{type: "No Auth"},
        body: %{
          trixta_dynamic: %{input_type: "last_result_of", step_name: :create_creative},
          trixta_dynamic_on: true,
          trixta_static: %{}
        },
        headers: %{
          trixta_dynamic: %{input_type: "none"},
          trixta_dynamic_on: false,
          trixta_static: [
            %{
              "key" => "Content-Type",
              "value" => %{
                "trixta_dynamic" => %{"input_type" => "none"},
                "trixta_dynamic_on" => false,
                "trixta_static" => "application/json"
              }
            },
            %{
              "key" => "Accept-Type",
              "value" => %{
                "trixta_dynamic" => %{"input_type" => "none"},
                "trixta_dynamic_on" => false,
                "trixta_static" => "application/json"
              }
            }
          ]
        },
        method: :post,
        options: %{
          trixta_dynamic: %{input_type: "none"},
          trixta_dynamic_on: false,
          trixta_static: []
        },
        url: %{
          trixta_dynamic: %{input_type: "none"},
          trixta_dynamic_on: false,
          trixta_static: [
            %{
              "trixta_dynamic" => %{"input_type" => "none"},
              "trixta_dynamic_on" => false,
              "trixta_static" =>
                "https://graph.facebook.com/v16.0/act_912169106589507/adcreatives"
            }
          ]
        }
      ],
      "id" => "7bbf0fde6cb54eb7ba20d0da49587d6c",
      "inner" => [],
      "input" => nil,
      "name" => "create_creative_http",
      "result" => nil,
      "result_function" => nil,
      "settings" => [
        :post,
        [
          [TrixtaSpaceWeb.Step.Input.None.V_0_0_1],
          false,
          [
            [
              [TrixtaSpaceWeb.Step.Input.None.V_0_0_1],
              false,
              "https://graph.facebook.com/v16.0/act_912169106589507/adcreatives"
            ]
          ]
        ],
        [[:last_result_of, :create_creative], true, {:%{}, [], []}],
        [
          [TrixtaSpaceWeb.Step.Input.None.V_0_0_1],
          false,
          [
            {"Content-Type",
             [[TrixtaSpaceWeb.Step.Input.None.V_0_0_1], false, "application/json"]},
            {"Accept-Type", [[TrixtaSpaceWeb.Step.Input.None.V_0_0_1], false, "application/json"]}
          ]
        ],
        [[TrixtaSpaceWeb.Step.Input.None.V_0_0_1], false, []],
        ["No Auth"]
      ],
      "tags" => [],
      "use" => "Trixta.Steps.HttpRequest.Request.V_1_3_0",
      "version" => "auto:6a13a8a386924158af8c5ceb05e8bde7"
    },
    "creative" => %{
      "aspects" => [],
      "branch" => [],
      "config" => [input: nil],
      "id" => "e943b1cda1f74d06bf4be915d1796a36",
      "inner" => [:create_creative, :create_creative_http],
      "input" => nil,
      "name" => "creative",
      "result" => nil,
      "result_function" => nil,
      "settings" => [],
      "tags" => [],
      "use" => "Trixta.Steps.Sequence.V_0_0_1",
      "version" => "auto:6a13a8a386924158af8c5ceb05e8bde7"
    },
    "starting_step" => %{
      "aspects" => [],
      "branch" => [],
      "config" => [input: nil],
      "id" => "8448565cde7c4ae58ea70f84e016dd45",
      "inner" => [:access_token, :campaign, :adset, :creative, :ad],
      "input" => nil,
      "name" => "starting_step",
      "result" => nil,
      "result_function" => nil,
      "settings" => [],
      "tags" => [],
      "use" => "Trixta.Steps.Sequence.V_0_0_1",
      "version" => "auto:6a13a8a386924158af8c5ceb05e8bde7"
    }
  },
  tags: [],
  version_name: "auto:6a13a8a386924158af8c5ceb05e8bde7"
}
