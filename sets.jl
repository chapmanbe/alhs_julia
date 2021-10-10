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

# ╔═╡ 7224ff21-b911-417d-b42c-b2aac200d930
begin
	using PlutoUI
end

# ╔═╡ 66ee80df-26f5-4d6b-8d2b-deba85ef5a2e
md"""

# Selecting and Filtering Patients Based on Data Values

In this notebook we will be exploring tools we will be using during the next two weeks to split patients into different groups based on properties that the patients do or do not share. We will start with the conceptual basis for this using __sets__. We will then look at how we can achieve these sets using __Boolean logic__.

"""

# ╔═╡ 025f1c63-7f8e-4b8c-b470-b35f86f19901
md"""
# The Beautiful (and Famous) Julia Set

![Julia Set](https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Julia_set_(indigo).png/640px-Julia_set_(indigo).png)
"""

# ╔═╡ 1da07d3d-3dd5-48e8-a679-fbeef8128091
md"""

## The Key Idea of Sets: Commonality

To define a set we first need to select the property or properties that __all__ members (elements) of the set have in __common__. The properties need to be such that we can ask quesitons about that property that result in a __YES__ (__True__) or __NO__ (__False__) answer.

### Examples using Numbers:

- The set of all even integers ("Is 3 even? No (False)", "Is 6 even? Yes (True)")
- The set of all odd integers ("Is 3 odd?", "Is 6 odd?")
- The set of all integers greater than 6. ("Is 5 greatr than 6?", "Is 10 greater than six?")

#### Exercise

Can you think of at least two more questions you could ask about numbers to create sets of numbers that create a set? (Remember, all members of sets have at least one property in common.)

$(@bind numex1 TextField((80,7)))

"""

# ╔═╡ 51c6ff9c-dc99-422d-83d4-fece9bb0068d
md"""


### Example: Game of Set

The game Set consists of cards that have four properties

1. Shape
1. Fill Pattern
1. Color
1. Number

![game of Set](https://upload.wikimedia.org/wikipedia/commons/8/8f/Set-game-cards.png)


A set consists of three cards which satisfy ALL of these conditions:

* They all have the same number, __OR__ they have three different numbers.

__AND__

* They all have the same symbol, __OR__ they have three different symbols.

__AND__

* They all have the same shading, __OR__ they have three different shadings.

__AND__

* They all have the same color, __OR__ they have three different colors. ([From wikipedia](https://en.wikipedia.org/wiki/Set_(game)))

This game explicitly several of the concepts that we will use to group patients.

First, notice that every condition for the cards can be stated as a __YES__ or __NO__ question? For example, 

- "Do the three cards all have the same shading?"
- "Do the three cards have three different symbols?"



Further, the conditions introduce two of the key words and the corresponding set concepts that we will use to group patients:

- __AND__: This corresponds to the set concept of __INTERSECTION__ (frequently denoted with the symbol __$\cap$__)
- __OR__: This corresponds to the set concept of __UNION__ (frequently denoted with the symbol __$\cup$__)

### One Last Word

In order to construct our sets we need one last word that is 

__NOT__ (frequently denoted with the symbol __!__ or __$\neg$__)

To help understand these concepts we will use [Venn diagrams](https://en.wikipedia.org/wiki/Venn_diagram). (Venn diagrams have limited utility for more then three sets.)
"""

# ╔═╡ 6d1b3eb5-6f2b-48c6-b8dd-73fbf6c38130
html"""

<h4>If you have forgotten your childhood Venn diagram lessons, watch this short video.</h4>

<iframe width="560" height="315" src="https://www.youtube.com/embed/lnalI7eVQsQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
"""

# ╔═╡ 9917ccf9-1503-4dd9-9bd7-c9a28e9ef7a6
md"""

### Intersection (AND) of Two sets

#### Example

- Let set __F__ be the set of all patients who are Female
- Let set __O__ be the set of all patients with a BMI > 30.

Consider the question 

- "Who are the female patients with BMI greater than 30?

We can rewrite this as

- "Who are the patients who are female (members of set F) __AND__ have a BMI greater than 30 (members of set O)?"

This would be written mathematically as

- $\bf{F} \cap \bf{O}?$

and represented in the yellow region in the Venn diagram below.

![Intersection of two sets](https://github.com/chapmanbe/raw-stuff/blob/main/EulerVenn/venn_intersect_fo.png?raw=true)

### Union (OR) of Two Sets

#### Example

- Let set __N__ be the set of all patients who have [disorder of kidney due to diabetes mellitus (nephropathy)](http://purl.bioontology.org/ontology/SNOMEDCT/127013003).
- Let set __R__ be the set of all patients with a retinopathy.

Consider the question 

- "Who are the patients with nephropathy __OR__ [retinopathy due to diabetes mellitus (retinopathy)](http://purl.bioontology.org/ontology/SNOMEDCT/4855003)?

This would be written mathematically as

- $\bf{N} \cup \bf{R}?$

and represented in the green region in the Venn diagram below.

![Union of two sets](https://github.com/chapmanbe/raw-stuff/blob/main/EulerVenn/venn_union_nr.png?raw=true)

#### Example

- Let set __F__ be the set of all patients who are Female
- Let set __O__ be the set of all patients with a BMI > 30.

Consider the question

- "Who are the female patients who are not obese?"

This could be rewritten as

- "Who are the patients who are female __AND NOT__ obese?"

This can be written mathematically as

- $\bf{F} \cap \neg \bf{O}?$

![Difference of two sets](https://github.com/chapmanbe/raw-stuff/blob/main/EulerVenn/venn_diff_fo.png?raw=true)
"""

# ╔═╡ 95d7109f-314d-4851-ac59-4bf059626d24
md"""

## Exploration with the [MIMIC II](https://archive.physionet.org/mimic2/) Demo Data Set

MIMIC (Medical Information Mart for Intensive Care) is a fully de-identified data set consisting of hospital-generated data collected on patients with an ICU admission. The current release of MIMIC is [MIMIC-IV](https://mimic.mit.edu/docs/iv/)

### MIMIC-II

MIMIC-II is an earlier relesae of MIMIC

>The MIMIC II...Databases contain physiologic signals and vital signs time series captured from patient monitors, and comprehensive clinical data obtained from hospital medical information systems, for tens of thousands of Intensive Care Unit (ICU) patients*. Data were collected between 2001 and 2008 from a variety of ICUs (medical, surgical, coronary care, and neonatal) in a single tertiary teaching hospital. 

Access to the full MIMIC data sets requires ethics training and a data use agreement. However, the MIMIC-II data set includes a demo data set that consists of the data for 4000 deceased inviduals and is available without any restrictions. Even as a small data set there is a nearly overwhelming amount of data.

- 5074 admissions
- 5844 ICU stays
- 3740682 lab orders
- 1048968 medication orders
- 90000 microbiology orders
- 34240621 chart events
- 2471191 io events
- 171927 notes


#### Diabetes in MIMIC-II Demo

For illustrative purposes I extracted some of the data that might be similar to data in our diabetes project. It is also illustrative of how standards can help work with data and how we create sets with YES/NO questions

- __Diagnoses:__ Diagnoses were determined using the ICD9 codes assigned to the patient at discharge.
  - Does the patient have a type I diabetes diagnosis?
  - Does the patient have a type II diabetes diagnosis?
  - Number of non-diabetes diagnoses
- A1C Values
- Glucose Blood 
- marital_status
- ethnicty
- payor
- religion
- admission
- sex
- age at death
- hospitaldeath
- DaysInHospital
- height
- weight
- bmi

"""

# ╔═╡ 646ceac0-b72c-4b87-a3a1-0888d9bd4a83
md"""
### Exercise:

In this and the following examples the sets are represented using Euler-Venn diagrams, which try to represent not just the intersection of sets but the relative sizes of the sets by the areas of the circles.

Given the two set _TypeI_ and _TypeII_, what combinations of __AND__, __OR__, and or __NOT__ would yield the set represented by the crosshatched area?

![all diabetics](https://github.com/chapmanbe/raw-stuff/blob/main/EulerVenn/Alldiabetics.png?raw=true)
"""

# ╔═╡ a3ed9688-4459-4270-856d-bfb9bcd9a562
	
HTML("<details><summary><strong>My Answer</strong></summary><p>TypeI <b>OR</b> Type II</p></details>")


# ╔═╡ 9ec579ae-059a-46e3-b73c-089271a4b83f
md"""

### Exercise:

Given the two set _TypeI_ and _TypeII_, what combinations of __AND__, __OR__, and or __NOT__ would yield the set represented by the crosshatched area?

![all diabetics](https://github.com/chapmanbe/raw-stuff/blob/main/EulerVenn/DiabeticAndObese.png?raw=true)
"""

# ╔═╡ 4ed2f1f8-1249-4679-b93b-a54684163729
	
HTML("<details><summary><strong>My Answers</strong></summary><p>Obese <b>AND</b> (TypeI <b>OR</b> Type II)</p></details>")


# ╔═╡ 5aef28d5-8ffd-45f9-a547-6bb41e359bc0
md"""

### Exercise:

Given the two set _TypeI_ and _TypeII_, what combinations of __AND__, __OR__, and or __NOT__ would yield the set represented by the crosshatched area?

![all diabetics](https://github.com/chapmanbe/raw-stuff/blob/main/EulerVenn/Diedobesediabetic.png?raw=true)
"""

# ╔═╡ 392c63d4-75aa-4df1-b0fc-40702c8745b8
	
HTML("<details><summary><strong>My Answers</strong></summary><p>Obese <b>AND</b> Type II <b>AND</b> DiedAtHospital</p></details>")

# ╔═╡ 47c88a48-5392-4b2f-abe6-8593657587bf
md"""## Selecting based on Numeric Values

All of our examples so far with the MIMIC data set have been asking questions of categorical data (e.g. sex, died at the hospital). But as we showed with the numbers earlier we can still form YES/NO questions with numeric values. Here is an example.

#### Example

A1c above 7 (HighA1c) is viewed as problematic and is a basis for diagnosing diabetes. The biological significance of low A1c (below 4) is not well known. However, a [recent study](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4734630/), found that low A1c was associated with increased mortality. So we might consider A1c vaues < 4 or greater than 7 as problematic:

- "What patients have TypeII diabetes __AND__ have A1c values less than 4.0 __OR__ have A1c values greater than 7?"

- $\text{TypeII} \cup ((\text{A1C} < 4) \cup (\text{A1C} > 7))$

![a1c problems](https://github.com/chapmanbe/raw-stuff/blob/main/EulerVenn/diabetes4.png?raw=true)

"""

# ╔═╡ c51953b1-d267-4206-879d-63a139d12afa
md"""
# Additional set information

If you are interested in more complete (yet still brief) review of set concepts and notation, check out [this page](https://plato.stanford.edu/entries/set-theory/basic-set-theory.html).
"""

# ╔═╡ b481618c-13b7-4fd3-bf21-e736b6902fb9
md"""
### Answers in set notation

- $\text{TypeI} \cup \text{TypeII}$
- $\text{Obese} \cap (\text{TypeI} \cup \text{TypeII})$
- $\text{DiedInHospital} \cap \text{Obese} \cap \text{TypeII}$
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
# ╟─66ee80df-26f5-4d6b-8d2b-deba85ef5a2e
# ╟─025f1c63-7f8e-4b8c-b470-b35f86f19901
# ╟─1da07d3d-3dd5-48e8-a679-fbeef8128091
# ╟─51c6ff9c-dc99-422d-83d4-fece9bb0068d
# ╟─6d1b3eb5-6f2b-48c6-b8dd-73fbf6c38130
# ╟─9917ccf9-1503-4dd9-9bd7-c9a28e9ef7a6
# ╟─95d7109f-314d-4851-ac59-4bf059626d24
# ╟─646ceac0-b72c-4b87-a3a1-0888d9bd4a83
# ╟─a3ed9688-4459-4270-856d-bfb9bcd9a562
# ╟─9ec579ae-059a-46e3-b73c-089271a4b83f
# ╟─4ed2f1f8-1249-4679-b93b-a54684163729
# ╟─5aef28d5-8ffd-45f9-a547-6bb41e359bc0
# ╟─392c63d4-75aa-4df1-b0fc-40702c8745b8
# ╠═47c88a48-5392-4b2f-abe6-8593657587bf
# ╟─7224ff21-b911-417d-b42c-b2aac200d930
# ╟─c51953b1-d267-4206-879d-63a139d12afa
# ╟─b481618c-13b7-4fd3-bf21-e736b6902fb9
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
