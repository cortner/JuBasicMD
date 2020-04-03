abstract type AbstractSampler end
abstract type MetropolisSampler <: AbstractSampler end
abstract type NonMetropolisSampler <: AbstractSampler end

abstract type ZerothOrderMetropolisSampler <: MetropolisSampler end
abstract type FirstOrderMetropolisSampler <: MetropolisSampler end
abstract type SecondOrderMetropolisSampler <: MetropolisSampler end

abstract type ZerothOrderNonMetropolisSampler <: NonMetropolisSampler end
abstract type FirstOrderNonMetropolisSampler <: NonMetropolisSampler end
abstract type SecondOrderNonMetropolisSampler <: NonMetropolisSampler end

abstract type AbstractSamplerState end
abstract type MetropolisSamplerState <: AbstractSamplerState end
abstract type NonMetropolisSamplerState <: AbstractSamplerState end

abstract type ZerothOrderMetropolisSamplerState <: MetropolisSamplerState end
abstract type FirstOrderMetropolisSamplerState <: MetropolisSamplerState end
abstract type SecondOrderMetropolisSamplerState <: MetropolisSamplerState end

abstract type ZerothOrderNonMetropolisSamplerState <: NonMetropolisSamplerState end
abstract type FirstOrderNonMetropolisSamplerState <: NonMetropolisSamplerState end
abstract type SecondOrderNonMetropolisSamplerState <: NonMetropolisSamplerState end

# abstract type AbstractEnergyFunction end
struct Options
        n_iters::Int
        save_trajectory::Bool
end

function Options(;
        n_iters = 10^4,
        save_trajectory = true)

        return Options(n_iters, save_trajectory)
end
