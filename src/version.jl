"""
    version.jl

Description:
    Borrowed from MLJ.jl, this defines the version of the package as a constant in the module.

Author:
- Sasha Petrenko <sap625@mst.edu>

Credits:
- MLJ.jl: https://github.com/alan-turing-institute/MLJ.jl
"""

using Pkg

"""
    NTA_VERSION

A constant that contains the version of the installed NumericalTypeAliases.jl package.
"""
const NTA_VERSION = VersionNumber(
    Pkg.TOML.parsefile(joinpath(dirname(@__DIR__), "Project.toml"))["version"]
)
