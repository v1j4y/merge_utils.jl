using merge_utils
using Documenter

DocMeta.setdocmeta!(merge_utils, :DocTestSetup, :(using merge_utils); recursive=true)

makedocs(;
    modules=[merge_utils],
    authors="v1j4y <vijay.gopal.c@gmail.com> and contributors",
    repo="https://github.com/v1j4y/merge_utils.jl/blob/{commit}{path}#{line}",
    sitename="merge_utils.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://v1j4y.github.io/merge_utils.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/v1j4y/merge_utils.jl",
)
