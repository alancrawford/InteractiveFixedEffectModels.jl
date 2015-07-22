# Object constructed by the user
type PanelFactorModel
    id::Symbol
    time::Symbol
    rank::Int64
end

# object returned by fitting variable
abstract AbstractPanelFactorResult

type PanelFactorResult{Tid, Ttime} <: AbstractPanelFactorResult
    id::PooledDataVector{Tid}
    time::PooledDataVector{Ttime}
    loadings::Matrix{Float64}  # N x d
    factors::Matrix{Float64} # T x d
    iterations::Vector{Int64}
    x_converged::Vector{Bool}
    f_converged::Vector{Bool}
    gr_converged::Vector{Bool}

end


# Object returned when fitting model
type PanelFactorModelResult{Tid, Ttime} <: AbstractPanelFactorResult
    coef::Vector{Float64}
    id::PooledDataVector{Tid}
    time::PooledDataVector{Ttime}
    loadings::Matrix{Float64}  # N x d
    factors::Matrix{Float64} # T x d
    iterations::Int64
    x_converged::Bool
    f_converged::Bool
    gr_converged::Bool
end


