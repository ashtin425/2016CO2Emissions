-- looking at the table
select *
from EnergyConsumption..worldometers_energy

-- looking at which countries consume the most energy
select name, energy_consumption_btu, (world_share * 100) as world_share, (non_renewable * 100) as non_renewable, (oil_consump * 100) as oil_consumption, 
(gas_consump * 100) as gas_consumption, (coal_consump * 100) as coal_consumption, (re_nuclear * 100) as nuclear, population_2016, co2_emissions_tons_2016
from EnergyConsumption..worldometers_energy
where name is not null
order by energy_consumption_btu desc

-- looking at which countries use the least amount of non renewable energy aka green energy
select name, energy_consumption_btu, (world_share * 100) as world_share, (non_renewable * 100) as non_renewable, (oil_consump * 100) as oil_consumption, 
(gas_consump * 100) as gas_consumption, (coal_consump * 100) as coal_consumption, (re_nuclear * 100) as nuclear, population_2016, co2_emissions_tons_2016
from EnergyConsumption..worldometers_energy
where name is not null
order by non_renewable asc

-- top countries that use gas as their source of energy
select name, energy_consumption_btu, (world_share * 100) as world_share, (non_renewable * 100) as non_renewable, (oil_consump * 100) as oil_consumption, 
(gas_consump * 100) as gas_consumption, (coal_consump * 100) as coal_consumption, (re_nuclear * 100) as nuclear, population_2016, co2_emissions_tons_2016
from EnergyConsumption..worldometers_energy
where name is not null
order by gas_consump desc

--top countries that use oil as their energy source
select name, energy_consumption_btu, (world_share * 100) as world_share, (non_renewable * 100) as non_renewable, (oil_consump * 100) as oil_consumption, 
(gas_consump * 100) as gas_consumption, (coal_consump * 100) as coal_consumption, (re_nuclear * 100) as nuclear, population_2016, co2_emissions_tons_2016
from EnergyConsumption..worldometers_energy
where name is not null and population_2016 is not null and co2_emiss_per_capita is not null
order by oil_consump desc

-- top countries that use coal as their energy source
select name, energy_consumption_btu, (world_share * 100) as world_share, (non_renewable * 100) as non_renewable, (oil_consump * 100) as oil_consumption, 
(gas_consump * 100) as gas_consumption, (coal_consump * 100) as coal_consumption, (re_nuclear * 100) as nuclear, population_2016, co2_emissions_tons_2016
from EnergyConsumption..worldometers_energy
where name is not null
order by coal_consump desc

-- world average use of non renewable sources of energy
select avg(non_renewable * 100) as Non_Renewable_AVG
from EnergyConsumption..worldometers_energy

-- descending list of countries that contribute to co2 emmisions
select name, energy_consumption_btu, (world_share * 100) as world_share, (non_renewable * 100) as non_renewable, (oil_consump * 100) as oil_consumption, 
(gas_consump * 100) as gas_consumption, (coal_consump * 100) as coal_consumption, (re_nuclear * 100) as nuclear, population_2016, co2_emissions_tons_2016,
(country_share_of_world_co2 * 100) as country_share_of_world_co2
from EnergyConsumption..worldometers_energy
where name is not null and country_share_of_world_co2 is not null
order by country_share_of_world_co2 desc

