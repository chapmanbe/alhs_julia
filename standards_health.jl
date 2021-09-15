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

These 

[Victoria case-mix funding](https://www2.health.vic.gov.au/hospitals-and-health-services/funding-performance-accountability/activity-based-funding/casemix-funding)

## Lab Tests

- [LOINC]()

>Hi Brian
 
It was good to walk through the course today.
 
During the conversation I had asked about data checking e.g. not relying on LOIN-C codes etc without checking them.
 
Examples I have come across:
One pathology company labelling both fasting and random glucose pathology tests results with the same code: 14749-6 This makes it challenging if you are writing code to identify people who have diabetes which rely on being able to differentiate between fasting and random test results. It also meant that our clinical support tool was not fl
 
The other example is a large general practice data set which included an ATC code for a vaccine that had been applied to other medications at random. Relying on the codes would have resulted in a underestimation of the prescription of cardiovascular medications in general practice.
 
The moral of the story of course is not to rely on these codes, but to triangulate it with other information.
 
You had asked me to send through some examples – can you please let me know what level of detail would be helpful if further information about these examples would be helpful?

## Prescriptions

There are a variety of drug standards relevant to this project.

- [PBS]()
- [Australian Medicine Names]()

## Data Entry Methods and Issues with Data 

- Drop down selection/default values
   - [Indigenous vaccination rates in Victoria revised downwards after software error detected](https://www.abc.net.au/news/2021-09-14/indigenous-vaccination-rates-in-victoria-dashed-software-error/100459000)
- Data validation (range checking, format checking)
- data pulls vs manual entry (out of network data?)
- Patient-provided data
   - redunancy/data inconsistency/data entry errors
- URN
- Free text vs coded entry
"""

# ╔═╡ Cell order:
# ╠═3fe308a6-1490-11ec-1a5a-65f6e8e70959
