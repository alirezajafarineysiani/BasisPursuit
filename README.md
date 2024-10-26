# Basis Pursuit

A MATLAB-based code to solve the Basis Pursuit problem using linear programming.

## Problem Statement

The objective is to minimize the following:

$$ 
\hat{\mathbf{x}} =  \quad \\underset{\mathbf{x}}{\textrm{minimize}} \quad \lVert\mathbf{x}\rVert_1 \quad \textrm{subject to:} \quad \mathbf{A} \mathbf{x} = \mathbf{b} 
$$

where:
- $$\hat{\mathbf{x}} \in \mathcal{R}^{m}$$ is the recovered sparse signal,
- $$\mathbf{A} \in \mathcal{R}^{n \times m} $$ is the sensing matrix,
- $$\mathbf{b} \in \mathcal{R}^{n} $$ is the measurement vector.

## Requirements

Ensure you have MATLAB with the Optimization Toolbox installed.

## Corresponding Mathematical Representation

The MATLAB function `BP(Aeq, beq, method)` implements the following formulation:

1. Define the objective function:

$$
\mathbf{f} = \begin{bmatrix}
1 \\
1 \\
\vdots \\
1 \\
1 \\
\vdots \\
1
\end{bmatrix}
$$

where the vector $$\mathbf{f}$$ has a length of $$2m$$.

2. The equality constraints are constructed as:

$$ 
\mathbf{A}_{eq} \mathbf{s} = \mathbf{b} 
$$

where 

$$
\mathbf{A}_{eq} =
\begin{bmatrix}
 \mathbf{A} & -\mathbf{A}
\end{bmatrix} 
$$

3. The inequality constraints are represented by:

$$ 
\mathbf{s} \geq 0 
$$

4. The estimated solution is given by:

$$ 
\hat{\mathbf{x}} = \mathbf{B} \mathbf{s} 
$$

where

$$
\mathbf{B} =
\begin{bmatrix}
 \mathbf{I}& -\mathbf{I}
\end{bmatrix} 
$$

where:
- $$m$$ is the number of variables,
- $$\text{method}$$ specifies the linear programming algorithm, which must be one of the following:
  - `'dual-simplex'` (default)
  - `'interior-point'`
