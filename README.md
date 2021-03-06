# Survival Probability of a Lazy Prey on Lattices and Complex Networks
Codes for the numerical simulations in the paper, 'Survival probability of a lazy prey on lattices and complex networks'

The paper analyzes the survival probability of lazy prey in a predator-prey model, where the predators and the prey occupy the nodes of complex networks, or lattices, and navigate along the edges. The predators are modelled as random walkers, and the prey follows a minimal effort evasion strategy, where it only moves when a predator enters its immediate neighbourhood. This strategy forces predators to approach the prey in specific configurations and drastically increases the survival probability of the prey. This repository contains the codes to simulate the predator-prey using MATLAB. 

The following is a brief description of the codes in the repository-

1. configs2.m : Function to find the trapping configurations involving 2 predators.
2. configs3.m : Function to find the trapping configurations involving 3 predators.
3. configs4.m : Function to find the trapping configurations involving 4 predators.
4. grid2ddg.m : Function to create a MATLAB graph object for a square lattice with connected diagonals and periodic boundary condition. 
5. grid2dper.m : Function to create a MATLAB graph object for a square lattice and periodic boundary condition. 
6. grid2dtr.m : Function to create a MATLAB graph object for a triangular lattice with connected diagonals and periodic boundary condition.
7. rw.m : Function to simulate a random walker on a given topology.
8. surv.m : Function to simulate the predator-prey model.
9. survival_of_evasive_prey_network.m : Script to generate survival data used to obtain the survival probabilities. 
10. temp.m : Script to generate the plots used in the paper.
11. trapped.m : Function to detect whether a prey is caught at a node, given the position of all the predators.  



