### A Pluto.jl notebook ###
# v0.16.0

using Markdown
using InteractiveUtils

# ╔═╡ 3fe308a6-1490-11ec-1a5a-65f6e8e70959
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


## Data Entry Methods and Other Issues

Using standards for data greatly expand the usefulness of the resulting information. However, just because standards are used does not mean the standards are correct. As mentioned above with ICD codes, the purpose and manner in which codes are used  will introduce error and or bias into the resulting information.

Further, codes are still liable to data entry errors. Such as selecting the wrong entry from a drop down menu or relying on default values. Default values were the "culprit" in a recent error in estimating Indigenous vaccination rates in Victoria: [Indigenous vaccination rates in Victoria revised downwards after software error detected](https://www.abc.net.au/news/2021-09-14/indigenous-vaccination-rates-in-victoria-dashed-software-error/100459000).

A GP participating in this course shared the following examples of coded data entry errors:

>One pathology company labelling both fasting and random glucose pathology tests results with the same code: 14749-6.
>
>The other example is a large general practice data set which included an ATC code for a vaccine that had been applied to other medications at random. Relying on the codes would have resulted in a underestimation of the prescription of cardiovascular medications in general practice.

On the positive side, coded data entry allows for checking for data integrity at the point of data entry, for example range checking or format checking.

However, coded data entry is more tedious than simply typing free text and so a data collection strategy needs to balance ease of use with accuracy and completeness.
"""

# ╔═╡ Cell order:
# ╠═3fe308a6-1490-11ec-1a5a-65f6e8e70959
