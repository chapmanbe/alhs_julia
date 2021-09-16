### A Pluto.jl notebook ###
# v0.16.0

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ b286fb97-61ed-45d8-9d4c-fea506061e19
using PlutoUI

# ╔═╡ c17b9560-eee8-4216-94fb-fe8db636c03c
md"""

# Introduction to Standards

Standards are at the core of health informatics. However, before diving into the standards of health domain, we are going to start by exploring how standards are an important part of our daily life.

Please  start with [this](https://www.atlasobscura.com/articles/hidden-wonder-international-standards-organization-iso) article, which I hope will give a nice motivation to the idea of standards.  



> Standards are like toothbrushes, everyone agrees that they’re a good idea but nobody wants to use anyone else’s. (Attributed to Murtha Baca, Getty Research Institute. Pomerantz, Jeffrey. *Metadata* (MIT Press Essential Knowledge series) (p. 65)).

"""

# ╔═╡ fb66563a-0a13-4dad-8dd8-cc310a6011fa
html"""<h2>Standards Predicted Brexit Decades Ago</h2>

<p><iframe width="560" height="315" src="https://www.youtube.com/embed/XHuKq22yXH4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></p>
<hr />
<p><iframe src="https://www.youtube.com/embed/rvYuoWyk8iU" width="560" height="315" allowfullscreen="allowfullscreen" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"></iframe></p>
"""

# ╔═╡ ba54c574-1507-4528-8542-56f16e8a6bf1
md"""
## What is a standard?


Consulting the Oxford English Dictionary there are, as usual, multiple definitions for _standard_. For our purposes the most relevant definition is

> The authorized exemplar of a unit of measure or weight; e.g. a measuring rod of unit length; a vessel of unit capacity, or a mass of metal of unit weight, preserved in the custody of public officers as a permanent evidence of the legally prescribed magnitude of the unit.


The International Organization for Standards (ISO) provides the following definition of a standard:

> a __document,__ established by consensus and approved by a recognized body, that provides, for common and repeated use, rules, guidelines or characteristics for activities or their results, aimed at the achievement of the optimum degree of order in a given context. ([ISO “What are standards and how do they help?”](https://www.iso.org/sites/ConsumersStandards/1_standards.html#section1_1))


### Key Concept!

The key phrase I want you to keep in mind as we discuss standards is __"aimed at the achievement of the optimum degree of order in a given context."__

As you work through the various sections, think about what the __context__ is and how standards help (or could help) achieve __optimum degree of order__ in that context.

## Standards Everywhere!

My ability to create and your ability to consume these lesson materials are deeply rooted in standards. You do not need to know what kind of computer I'm writing with and I do not need to know what kind of computer you are reading this on, because standards have been created for describing how to save and read characters on a computer. Further you do not need to know how my computer connected to the internet or how the document I created at home was transmitted from my computer to the computer(s) on which Canvas runs.

This ease is not intrinsic to computing but has been created through careful engineering and adoption of standards. Those of you old enough to remember the incompatibility between Mac and PC documents and storage media might have an easier time appreciating this.

English is the [official language of instruction](Your lectures, tutorials, exams, class discussions and other activities will be in English) at the University of Melbourne, but unlike the computing standards described above natural languages like English are more governed by convention. While France has the [Académie Française](https://en.wikipedia.org/wiki/Acad%C3%A9mie_Fran%C3%A7aise) to provide an official, though often still ignored, version of French, there is no equivalent in English.

## Standards are Driven By Technology and Politics



## Standards Examples: Length

Some of the most pervasive standards in our daily life relate to __measurements__. 

The English had a unified measuring system data back to the Magna Carta (1215 CE) with constiutant components dating back to Anglo-Saxon and Roman measures. Within [English](https://en.wikipedia.org/wiki/English_units) derived measurements systems, such as [Imperial](https://en.wikipedia.org/wiki/Imperial_units) and [United States Customary Units](https://en.wikipedia.org/wiki/United_States_customary_units), unit bases varied based on application: for example, 12 for length (12 inches in a foot), 16 for volume (16 fluid ounces in a pint), and 16 ounces in a pound. But with lots of other factors joining in: 3 feet in a yard, 14 pounds in a stone,  

The French, by contrast, had no common measuring system. After the French Revolution, there was a movement to rationalize French society (as well as to eliminate any connections to the _Ancien Régime_, including measurement, which resulted in the creation of the metric system. In 1795 the meter was [“defined as being one ten millionth of the distance between the North Pole and the Equator through Paris”](https://en.wikipedia.org/wiki/Units_of_measurement_in_France)

As we are probably all aware, the metric system is based on powers of 10. There is nothing special about 10, other than that we have (usually) 10 fingers and (again usually) 10 toes. So there was a _standardization_ of our bases---no more worryiong about whether we need to be thinking in terms of 3, 4, 8, 14, 16, etc. However, from a practical perspective, there are problems with using 10 as a basis---fractions! And absent computers to do teh work for us, humans generally find fractions challenging.

- Few numbers divide evenly into 10 (2 and 5) meaning that you are often having to work with difficult fractions.
	- By contrast, 12 (as in 12 inches in a foot) is evenly divided by 2, 3, 4, and 6.
    - The Babylonians used 60 as their basis. 60 is divided evently by 2, 3, 4, 5, 6, 10, 12, 15, 20, and 30.

Our move from using our fingers for arithmetic to using binary-based computers (computers that count based on powers of 2), introduces new challenges to the metric system since 10 is not a power of 2. So for example,

- One tenth (0.1) cannot be represented exactly in a binary computer, resulting in various computational errors if 0.1 (and similar numbers) form the basis of the computations. 

### Moral

Standards are rooted in social systems, solve certain problems (imperfectly), while introducing other problems.

"""

# ╔═╡ f3088148-1cb2-4647-8a9d-71a385aee2da
html"""
<p>You might find it interesting to see who did and who did not sign the original Treaty of the Meter in 1875:</p>
<table>
<tr><td>Argentina</td><td> Austria-Hungary</td><td>Belgium</td></tr>
<tr><td>Brazil</td><td>Denmark</td><td>France</td></tr>
<tr><td>Germany </td><td>Italy </td><td> Peru </td></tr>
<tr><td>Portugal </td><td> Russia </td><td> Spain </td></tr>
<tr><td>Sweden and Norway </td><td> Switzerland </td><td> Turkey </td></tr>
<tr><td>United States of America </td><td> Venezuela </td><td>  </td></tr>
</table>
"""

# ╔═╡ ec205f4f-c19c-4e99-9f52-f71bc5cbd0df
md"""
## Standards to Standards

As long as relationships between standards are well defined, there is little difference between using one standard or another---the conversions between them is a simple computation.

### Example: US Foot

In the United States, the foot (and hence the inch) has been defined in terms of the meter since 1893. So a foot is __defined as__ 1200/3937 $(1200/3937) meters.

### Example: mmHg

The SI standard for pressure is the Pascal (Pa). However, in medicine blood pressure is reported in millimeters of mercury (mmHG or mm[Hg]), a unit rooted in the historical roots of  the sphygmomanometer.

No worries!

mmHg is __defined as__ exactly 133.322387415 Pa
"""

# ╔═╡ c1a1a8f5-2a75-4eed-b4f4-97bbad2304a0
begin
	solar_year = 365.2422;
	lunar_month = 29.5306;
md"""## Standards Example: Time

Time is a very tricky subject.

- The solar year is approximately $(solar_year) days
- The lunar month is approximately $(lunar_month) days

Divide the solar year by the lunar month and you get
	$(solar_year/lunar_month)
	
Which is likely where we get our 12 month year, with lots of complicated rules to try to account for the 0.368262073916549 fractional days.
	
Our 12 month year is likely also the reason we have a 24 hour day, a division created by ancient Babylonian astronomers but not used in common life.
	
### Technology Determines and Limits Needs for Standards
	
The standard ancient technology for measuring time was the sundial. The sundial did not lead to our concept of a uniform hour, since the shadow moves slower at mid-day than it does in the evening or the morning. Further, there was probably little social need for small, uniform divisions of time. It was only in the move from an agrarian to an industrial society where shift work needed to be coordinated that a uniform hour started to be defined. The technology of mechanical clocks which started appearing around 1400 CE provided the technological basis for this. Minutes on mechanical clocks came around 200 years later. Seconds arrived on mechanical clocks at nearly the same time.
	
The classical second was the day dvided by 60x60 (there is that 60 again!). In the 1940s the second was defined as "1/86400" of a mean solar day." ([Wikipedia](https://en.wikipedia.org/wiki/Second#History_of_definition)) 
	
## Trains and time tandards

	
Prior to trains, travel was slow enough that the details of _time-zones_ were not important: it didn't matter whether Philadelphia and New York City, to use a USA example, had the same noon. However, with the speed of trains and the need for passangers to switch trains, coordinating time zones became important for the "optimum degree of order" for travellers.

## Are time standards settled?
	
Not at all! 
	
In the next section we will learn how seconds are now defined, but since Einstein we have known that the time experienced by two objects (e.g., you and me) is relative to the gravity the objects are experiencing as well as the relative velocity between the objects. 
	
How in the world would this matter? At the very least just think of how dependent we are on GPS satellites, which are experiencing a much weaker gravity than our cars.
	
### Reflect on
"""
end

# ╔═╡ c08225f3-f69e-4d80-9085-1bc771f341e7
md"""
## [Current Measurement Standards](https://physics.nist.gov/cuu/Units/current.html)

In 2018 our system of measurement standards was completely redesigned based on seven fundamental physical constants.


![NIST SI Constants Cards](https://www.nist.gov/sites/default/files/styles/960_x_960_limit/public/images/2018/10/30/17pml015_si-constants-card.jpg?itok=Ecezgy_j)
NIST SI Constants Cards

- "The meter (m) is defined by taking the fixed numerical value of the speed of light in vacuum c to be 299,792,458 when expressed in the unit m s−1, where the second is defined in terms of ∆νCs."
- "The second, symbol s, is the SI unit of time. It is defined by taking the fixed numerical value of the cesium frequency ΔνCs, the unperturbed ground-state hyperfine transition frequency of the cesium 133 atom, to be 9 192 631 770 when expressed in the unit Hz, which is equal to s-1."

Notice that there is no longer any reference to a day or a year or anything else solar or the equator, Paris or the North Pole.

"""

# ╔═╡ a25033dc-7273-4dd3-a02a-fe3d835523d4
md"""
## The moral from this historical review

> __Standardization becomes critical in a connected world.__ If you never come into contact with your faraway neighbors, it doesn’t especially matter whether you use the same measurements, operate by the same clock, or have the same size windows in your workplace. The Industrial Revolution, however, had the effect of shrinking the world—journeys which would once have been unthinkably long could now take place in the space of weeks, or even days. And for that, there needed to be cooperation along the line.

Similarly, standardization becomes important when the granularity of our interactions with the world increases.

## Standardization in healthcare

Remember the purpose of standards is to achieve "the optimum degree of order in a given context" and that "standardization becomes critical in a connected world."


Our current models of healthcare delivery date from the mid-20th Century. What are some of the ways you think the connectivity and granularity has evolved to make standards more important?


#### Type your answers here
$(@bind medical_connectivity TextField((80,7)))
"""

# ╔═╡ 33f7db73-042b-4b3c-b3f9-e54502a977d5
md"""

## How are standards created?

### There is a standard for that!

Standards are created by __standards developing organizations,__ which are accredited by __national standards organizations__, which join together in __international standards organizations__ to coordinate and published standards of international value.

### SDOs

Standards are created by __Standards Developing Organizations (SDO)__. SDOs can be


- Business groups.
  - Example _USB-DF:_ This SDO consists of businesses that develop USB cables
- Professional organizations.
  - Example _Institute of Electrical and Electroncis Engineers (IEEE):_ Professional organization developing standards for computing, communications, etc.
- Government agencies
  - Example [_Australian Digital Health Agency_](https://www.digitalhealth.gov.au/): Creates standards for Australian-specific needs in the digital health domain.
    - [HL7-FHIR Australia ](https://hl7.com.au/)



### National Standards Organizations (NSO)s

NSOs accredit SDOs within sovereign countries and thus define the rules for standards development. The NSOs are also the representatives for each country in the international standards organizations, such as ISO.

- [Standards Australia](https://www.standards.org.au/)
- [THE AMERICAN NATIONAL STANDARDS INSTITUTE (ANSI)](https://www.ansi.org/)

### International standards organizations

Organizes, publishes.

![standards_bodies.png](https://github.com/chapmanbe/raw-stuff/blob/main/Standards/standards_bodies.png?raw=true)  

## Important Medical Standards

- SNOMED-CT

>Today SNOMED International remains a division of CAP and is an American National Standards Institute (ANSI) accredited Standards Developing Organization (SDO), responsible for the continued development and maintenance of the SNOMED Clinical Terms (SNOMED CT) coding standard. ([SNOMED](https://digital.ahrq.gov/key-topics/snomed-ct))

- HL7 (including HL7-FHIR)

>Founded in 1987, Health Level Seven International (HL7) is a not-for-profit, ANSI-accredited standards developing organization dedicated to providing a comprehensive framework and related standards for the exchange, integration, sharing and retrieval of electronic health information that supports clinical practice and the management, delivery and evaluation of health services." ([About HL7 International](https://www.hl7.org/))

- LOINC

>LOINC, which stands for Logical Observation Identifiers Names and Codes, was initiated in 1994 by Clem McDonald, then an investigator at Regenstrief Institute, a non-profit medical research organization associated with Indiana University. Indianapolis-based Regenstrief organized the LOINC Committee to develop a common terminology for laboratory and clinical observations because there was a growing trend to send clinical data electronically from laboratories and other data producers to hospitals, physician's offices, and payers who use the data for clinical care and management purposes.
>
>At the time—and still today—most laboratories and clinical services use HL7 to send their results electronically from their reporting systems to their care systems. However, the tests in these messages are identified by means of their internal, idiosyncratic code values. As a result, receiving care system cannot fully "understand" and properly file the results they receive unless they either adopt the producer's test codes (which is impossible if they receive results from multiple sources), or invest in the work to map each result producer's code system to their internal code system. ([About LOINC](https://loinc.org/about/))


"""

# ╔═╡ 80a39d08-2a1d-428c-bfc4-b505e7050800
md"""
# Health Standards

Digital health initiatives have generally fallen into two categories: 

1. How we represent health data/information
   - SNOMED
   - LOINC
1. How we transmit health data/information.
   - HL7

Here we will limit ourselves to data representation, which is the most important concept for our data to knowledge topic.

### Natural language as representation

Much of human language addresses representing data in the world as well as the abstract  concepts we create to provide meaning about the data. Healthcare makes extensive use of natural language to represent and communicate data. However, natural language is a far from perfect medium for data representation. Here are some problems with natural langague:


-  Polysemy (homograph): A single term refers to multiple concepts. The word _set_ has [430 senses listed in the Oxford English Dictionary](https://www.guinnessworldrecords.com/world-records/english-word-with-the-most-meanings)
   - Mercury could refer to a mythical being, a planet, a metal, an automobile
-  Synonymy: Multiple terms refer to the same concept
   – AMI=Acute Myocardial Infarctus=Infarctus of the myocardium=Heart attack
   - salinity=saltiness
-  Imprecision: Lack of specificities. Natural speech often is elliptical relying on the knowledge of the listener to fill in the missing details. This can be problematic.
   – e.g., infarctus?

These all lead to __ambiguity__, which is not conducive to a "optimum degree of order."

 



## Standards Solution

Most of the standards that we will examine here are [ontologies](https://en.wikipedia.org/wiki/Ontology_(information_science)). Ontologies model the concepts of a domain using a heirarchy of concepts. That is, concepts have "is a" and "has a" relationships. As an illustration of this, the figure below shows a standard (Uber ontology) representation of the right kidney.

![dimmed kidney](https://github.com/chapmanbe/raw-stuff/blob/main/Standards/uber_kidney_dimmed.png?raw=true)

We can see that the _right kidney_ is a kind of _kidney_ which is a kind of _cavitated compound organ_ all the way up to an _entity_. In this figure I've dimmed some of the nodes in the representation so that only a single pathway is shown. The next figure shows the complete representation.

![uber full kidney](https://github.com/chapmanbe/raw-stuff/blob/main/Standards/uber_kidney.png?raw=true)

Here you can see that a kidney can be viewed in a variety of ways:

1. It is a an organ
1. It is an element of the abdomen
1. It is a lateral anatomical structure.

This is an example of a poly-heirarchy, which we will touch on again below.

### Concept-Base Representation

The foundational idea for standards-based solutions is referred to as "Concept Based Representation" (CBR).

![Concept based representation](https://github.com/chapmanbe/raw-stuff/blob/main/Standards/concept_based_representation.png?raw=true)

CBR has three parts

1. A unit of thought (concept)
1. A unique identifier for that unit of thought
1. A lexical expression (term) for that unit of thought

### A Few Principles of Successful Standards


1. Formal definition
   - The standard provides a formal definition of the concept (unit of thought) being represented.
1. Terminology and synonyms
   - The standard provides the preferred term for the concept as well as any "allowed" synonyms
1. Concept orientation
   - The standard ensures that each concept has one unambiguous, non-redundant meaning
1. Concept permanence
   - Old concepts cannot be deleted from the standard.
1. Non-semantic identifiers
   - The standard provides an ID for the concept that is not a name, that is not a code that will run out of room, and that is not  simplya place in a hierarchy.
1. Poly-hierarchy
   - The standard allows for a concept to have multiple parent concepts.  

### Example: Lisinopril

We will illustrate some of these concepts using the drug _lisinopril_. We will look at lisinopril in the following standards

- [SNOMED-CT](http://purl.bioontology.org/ontology/SNOMEDCT/386873009)
- [RxNORM](http://purl.bioontology.org/ontology/RXNORM/29046)
- [Chemical Entities of Biological Interest Ontology](http://purl.obolibrary.org/obo/CHEBI_43755)
- [MeSH](http://purl.bioontology.org/ontology/MESH/D017706)

- Australian Medicines Terminology
- Australian PBS

#### 1. Formal Definition of `lisinopril`

Only MeSH and Chemical Entities provide a definition of lisinopril.

- Mesh

>One of the ANGIOTENSIN-CONVERTING ENZYME INHIBITORS (ACE inhibitors), orally active, that has been used in the treatment of hypertension and congestive heart failure.

- Chemical Entities

>C21H31N3O5

#### 2. Terminology and synonyms

All the standards provide a preferred name and synonyms. In the case of RxNORM synonyms are "trade names".

#### 5. Non-semantic identifiers

All the standards provide unique, non-semantic identifiers

#### 6. Poly-hierarchy

Only SNOMED-CT has a poly-hierarchy representation of lisinopril. Viewing the graph below shows that SNOMED represents lisinopril both in terms of its chemical composition (dipeptide) as well as its clinical purpose ("hypotensive agent").

![lisinopril SNOMED Visualization](https://github.com/chapmanbe/raw-stuff/blob/main/Standards/snomed_lisinopril_viz.png?raw=true)

The figure is an illustration of how ontologies can help with data analysis. We can see that lisinopril is one of many ACE inhibitors which is a kind of "Renin-angiotensin system inhibitor" which is a kind of "Hypotensive agent." Thus data could be aggregated at various levels of granualrity.

![ACE inhibitors SNOMED](https://github.com/chapmanbe/raw-stuff/blob/main/Standards/snomed_ace_inhibitors.png?raw=true)


### Australian Resources

Because standards are intended for a specific context, Australia has its own set of health standards.

#### SNOMED-CT-AU

Some of these standards are expansion of existing international standards. Australia has its own modifications of SNOMED-CT which can be explored using CSIRO's [Shrimp Browser](https://ontoserver.csiro.au/shrimp).

#### Australian Medicine Terminology

There is also the Australian Medicine Terminology (AMT), something akin to RxNORM that we explored above using Bioportal. The Australian Medicine Terminology is also accessible via Shrimp, however, it is a little hard to find. Below shows the AMT heirarchy of lisinopril 10 mg.

![Shrimp lisinopril 10 mg](https://github.com/chapmanbe/raw-stuff/blob/main/Standards/amt_lisinopril_heirarchy.png?raw=true).


The next figure shows the details of how a particular lisinopril 10 mg concept is represented in ATM

![lisinopril AU](https://github.com/chapmanbe/raw-stuff/blob/main/Standards/lisinopril_aumed1.png?raw=true)

#### Prescription Benefit Scheme



## Why are there so many standards?

Recall "Standards are like toothbrushes, everyone agrees that they’re a good idea but nobody wants to use anyone else’s." 

But also standards are developed for a particular context and are abstractions for that context. Recalling Picasso's bulls, the _essence_ of lisinopril differs, depending on the context.




"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.9"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

[[Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "8076680b162ada2a031f707ac7b4953e30667a37"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.2"

[[Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[Parsers]]
deps = ["Dates"]
git-tree-sha1 = "438d35d2d95ae2c5e8780b330592b6de8494e779"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.0.3"

[[PlutoUI]]
deps = ["Base64", "Dates", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "Suppressor"]
git-tree-sha1 = "44e225d5837e2a2345e69a1d1e01ac2443ff9fcb"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.9"

[[Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[Random]]
deps = ["Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[Suppressor]]
git-tree-sha1 = "a819d77f31f83e5792a76081eee1ea6342ab8787"
uuid = "fd094767-a336-5f1f-9728-57cf17d0bbfb"
version = "0.2.0"

[[Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"
"""

# ╔═╡ Cell order:
# ╟─c17b9560-eee8-4216-94fb-fe8db636c03c
# ╟─fb66563a-0a13-4dad-8dd8-cc310a6011fa
# ╠═ba54c574-1507-4528-8542-56f16e8a6bf1
# ╟─f3088148-1cb2-4647-8a9d-71a385aee2da
# ╠═ec205f4f-c19c-4e99-9f52-f71bc5cbd0df
# ╠═c1a1a8f5-2a75-4eed-b4f4-97bbad2304a0
# ╟─c08225f3-f69e-4d80-9085-1bc771f341e7
# ╟─a25033dc-7273-4dd3-a02a-fe3d835523d4
# ╠═33f7db73-042b-4b3c-b3f9-e54502a977d5
# ╠═80a39d08-2a1d-428c-bfc4-b505e7050800
# ╟─b286fb97-61ed-45d8-9d4c-fea506061e19
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
