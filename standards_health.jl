### A Pluto.jl notebook ###
# v0.16.0

using Markdown
using InteractiveUtils

# ╔═╡ 1389c991-523c-46ee-8d54-7c24f2a8ab8b
md"""
# Health Standards Relevant to this Project

## [Discharge Diagnosis Codes](https://www.who.int/standards/classifications/classification-of-diseases)

>ICD is the foundation for the identification of health trends and statistics globally, and the international standard for reporting diseases and health conditions. It is the diagnostic classification standard for all clinical and research purposes. ICD defines the universe of diseases, disorders, injuries and other related health conditions, listed in a comprehensive, hierarchical fashion.

Upon discharge from a hospitalization, patients are assigned diagnostic codes by professional coders who read the discharge summary and based on the contained information assign a primary diagnosis as well as a number of associated diagnoses using ICD-10 codes.

These codes have the benefit of being widely used in hospitals and thus widely available, but they suffer from variability in who generates/enters the codes and, more importantly, suffer from up coding (purposelly selecting a code that reimburses at a higher rate rather than the most clinically accurate code), as the ICD codes are used to determine hospital funding in Australia (and elsewhere). (See, for example, [Victoria case-mix funding](https://www2.health.vic.gov.au/hospitals-and-health-services/funding-performance-accountability/activity-based-funding/casemix-funding).) Conversely, since the codes are not used for GP funding in Australia, they are not widely available from GP clinics.

## Lab Tests

In dominant standard for coding lab tests and observations is [LOINC](https://bioportal.bioontology.org/ontologies/LOINC).



## Prescriptions

In Australia prescription drugs available on the [Pharmaceutical Benefit Scheme (PBS)](https://www.pbs.gov.au/info/general/about-this-site) are coded using the WHO [Anatomical Therapeutic Chemical (ATC) codes combined with the Defined Daily Dose (DDD) codes](https://www.whocc.no/atc_ddd_index/). The WHO provides a searchable interface for the ATC/DDD codes. You can browse the ATC code heirarchy at [Bioportal](https://bioportal.bioontology.org/ontologies/ATC), but without the DDD codes.

"""

# ╔═╡ 43f379e2-133c-4ec0-a410-8432ebc670f1
html"""
<h3> Limitations of PBS data </h3>
<p>Monash University epidemiologist Jenni Ilomaki provided the following limitations to PBS data:</p>
<blockquote>
<p>Apologies for my late reply. There are a couple of limitations in the Australian PBS data that I would like to have (in the ideal world)</p>
<ul>
<li> PBS claim records do not have instructions which makes it difficult to estimate the duration of prescription. In the US Medicare, and also in some Asian countries, the prescribed duration is available. In Australia, we have to estimate this based on the dispensed amount and the usual administration frequency and dose.</li>
<li> I would like to have data which includes all dispensed medications, not only those dispensed via the PBS. There are lots of prescriptions dispensed as 'private'. Discount pharmacies give big discounts in these cases, for example, waiving the dispensing fee.</li> 
<li>Indication for the medication would be also important, but this does not occur in any claims data that I am aware of so totally requires the 'ideal world'.</li>
<li> Finally, it would be great to have a flag when medication is stopped. Or if a new, similar medication is dispensed, it would be great to know if the new one is a switch or an add-on. Again, I know I am dreaming....</li>
</blockquote>
"""

# ╔═╡ Cell order:
# ╠═1389c991-523c-46ee-8d54-7c24f2a8ab8b
# ╠═43f379e2-133c-4ec0-a410-8432ebc670f1
