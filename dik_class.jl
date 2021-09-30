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

# ╔═╡ 78c5a32c-fef3-11eb-0560-6592672bbca5
begin
    using PlutoUI
end


# ╔═╡ 7feba529-29c5-4be5-aeba-00db5397c4da
md"""
# Data, Information, and Knowledge in this Short Course

Definitions are tricky things, and trying to define what is meant by _data_, _information_, and _knowledge_ is a slippery task. 

>[T]he problems of definition are perhaps best exposed in a study in 2007 by the information scientist Chaim Zins that compiled definitions of _information_ (and _data_ and _knowledge_) offered by forty-five information scholars from sixteen countries. The compilation revealed 130 distinct notions, with different degrees of compatibility with one another, but no one capable of encompassing all thedifferent variations. (_Information: A Historical Companion_ p. x)

In this short course, we are going to largely be following a simplified view of the data-information-knowledge map provided by Luciano Floridi:

![Semantic concept of information](https://plato.stanford.edu/entries/information-semantic/figure1.jpg)

A useful set of definitions to start with is provided by Jefrey Pomerantz in _Metadata (MIT Press Essential Knowledge series)_.

- "Data, according to this view, is the raw stuff: what is collected by instrumentation or machinery." 
- "Information...is data that has been processed into a form that may be consumed by a human being."
- "Knowledge...is what you know, information that you have internalized."

In what follows we will expand, clarify, hedge around these definitions.

## What is Data?

### Big Picture View of Data

> Data...is the raw stuff: what is collected by instrumentation or machinery. The stream of bits sent to Earth by a Mars Rover, for example, is data. The signal carried by radio frequencies between your phone and the local cell tower is data....
> 
> 
> Data is stuff. It is raw, unprocessed, possibly even untouched by human hands, unviewed by human eyes, un-thought-about by human minds. We’re not used to thinking of information objects in this way: we’re used to thinking of information objects as things like books, or files on our computer, things that have been deliberately created by humans, and where human understanding is an integral part of their creation. However, think about the stream of bits sent to Earth by the Mars Rover, or a book in, for example, [Lushootseed](https://en.wikipedia.org/wiki/Lushootseed) (or some other language that you neither speak nor read… and apologies if you actually do know Lushootseed): you may know that a stream of bits or a book in Lushootseed has some meaning embedded in it, but without some processing, that meaning is not accessible to you. **Data is potential information, analogous to potential energy: work is required to release it.** (Pomerantz, Jeffrey. *Metadata (MIT Press Essential Knowledge series)* (pp. 20-21). The MIT Press. Kindle Edition.)

### Data as Difference: _The Diaphoric Definition of Data (DDD)_

Ultimately this data "stuff" is some difference, some difference in some physical quantity whether it is a voltage level on a transitor in a computer representing "ON" or the pigment on a sheet of paper depicting an "a", depending on the context.

### Examples

#### Letters

The modern English alphabet consists of 26 lower-case and 26 upper-case letters. It is sometimes referred to as the Latin alphabet (for example in computer type standards), although it differs slightly from the classical Latin alphabet (Classical Latin did not have _J_, _U_, or _W_). In this context __a__ and __D__ would each be a _datum_ as they are different symbols.

#### Words

In a different context we may want to consider a word as a datum. So instead of viewing __BRIAN__ as the data set __{B__, __R__, __I__, __A__, __N}__, __BRIAN__ is a single datum that differs from __BRAIN__, for example, within the context of English

## Exercise

Can you think of different contexts where "__Brian Chapman__" would represent a data set with

- 13 elements?
- 12 elements?
- 2 elements?
- 1 element?

$(@bind myNameContext TextField((80,7)))
"""

# ╔═╡ 2acf7039-a934-43fa-b956-d581b5d49169
let myNameContextAns = md"""

- __13 elements:__ There are 13 characters (counting the space between "Brian" and "Chapman" as a character) in the string. I might not want to differentiate between letters and spaces if I was figuring out how to typeset the string for printing.
- __12 elements:__ There are 12 letters in the string. I may be interested in the letters and no tthe space if were counting letter frequency, for example trying to encrypt or decrypt a message.
- __2 elements:__ There are two words if a view the space as delimiting words.
- __1 element:__ In the context of names, there is one name in the string.
"""
	
HTML("<details><summary><strong>My Answers</strong></summary>$(html(myNameContextAns))</details>")
    end

# ╔═╡ 2ccc8246-67cd-47ac-82a3-a06b23eb0a7d
md"""

## Example

Here are some actual data from my life:

```
141/73 6/3/2021
```

### What do you think these data and are what do they represent?

"""

# ╔═╡ ccd85c80-99d8-48c5-8a23-143a402d6ff0
md"""
#### At the most "atomistic" view we have the following data:

```
'1' '4' '1' '/' '7' '3' ' ' '6' '/' '3' '/' '2' '0' '2' '1'
```

#### Or we could view numbers as belonging together and spaces and '/' representing something else:

```
'141' '/' '73' ' ' '6' '/' '3' '/' '2021'
```

#### Or we could view spaces as separating pieces of data:

```
'141/73' '6/3/2021'

```
"""

# ╔═╡ 9064db1d-3031-4e43-943d-1e601821e44f
md"""### What are some of the ways we can interpret the `141/73` data?

#### Be creative!"""

# ╔═╡ 7a611c30-c745-4ade-881e-cec71e4f6973
md"""#### Type your answers here
$(@bind resp1 TextField((80,7)))
"""

# ╔═╡ 3b245fa2-1f83-45c3-9b3b-5fa62d002818
let answer1 = md"""

#### 141/73?

- $(parse(Int, "141", base=8) / parse(Int, "73", base=8 )) Assuming Base 8  Integer
- $(parse(Int, "141", base=8) / parse(Int, "73", base=16)) Assuming Base 16 Integer
- $(parse(Int, "141", base=8) / parse(Int, "73", base=10)) Assumint Base 10 Integer
- Systolic blood pressure of 141 and Diastolic blood pressure of 73
"""
	
HTML("<details><summary><strong>My Answers</strong></summary>$(html(answer1))</details>")
    end

# ╔═╡ 9d4a1119-bbbe-4d26-af88-6789420ab030
md"""### What if I tell you it is health-related data?"""

# ╔═╡ 9a4bd43f-c2ae-4dc1-8b33-6a4422c4bcfb


# ╔═╡ 97c45761-4f20-4063-800f-ce9d79111466
md"""#### Type your answers here
$(@bind resp1b TextField((80,7)))
"""

# ╔═╡ 15193b6b-98b5-4cf6-bf65-3133ca734112
md"""#### What are some of the ways we can interpret the '6/3/2021' data?"""

# ╔═╡ bccd1a45-33aa-43a1-8f70-68cd9a40c41f
md"""#### Type your answers here
$(@bind resp1c TextField((80,7)))
"""

# ╔═╡ 4efcfeaa-eb86-4cf3-b4e9-60210278991a
let answer2 = md"""#### 6/3/2021?

- $(6/3/2021) Assuming base 10 and `/` indicates division
- 6 March 2021
- 3 June 2021
"""
	
HTML("<details><summary><strong>My Answers</strong></summary>$(html(answer2))</details>")
    end

# ╔═╡ bd257e42-52b5-4fd6-9214-596617a5c10d
md"""## What are they actually?"""


# ╔═╡ d95f2476-0286-4aa3-ab25-c6d50b113c04
let answer4 = md"""
- 141/73
  - My maximum and minimum heart rate (beats per minute) on this bikeride

#### Anyone guess this as the physisological quantity?
"""

HTML("<details><summary><strong>My Answers</strong></summary>$(html(answer4))</details>")
    end

# ╔═╡ 08349618-e3a3-4d99-a56d-e145544266e2
let answer3 = md"""
- June 3, 2021 
  - The date of a bike ride I recorded on Strava

#### Anyone guess this date?

"""
HTML("<details><summary><strong>My Answers</strong></summary>$(html(answer3))</details>")
    end

# ╔═╡ bc23a5b8-b489-4d5a-9fad-572e2c9aea4d
md"""
# Creating Information from Data

If data is the "stuff" that information is made of, and if "information" is data that has been processed for human (and I would add computing) how is this done?

Our answer to this question is we create information from data by __adding__ __metadata__ to the data. The data we are adding metadata to is known as __primary data__. 

__Warning:__ Terminology can quickly become a mess.



## What is metadata?

>[W]hen metadata is doing its job well, it just fades into the background, unnoticed and nearly invisible. (Pomerantz, Jeffrey. _Metadata (MIT Press Essential Knowledge series)_ p. 1) 


---------

>The most common—---and perhaps least useful---definition of metadata is that it is “data about data.” As catchy as this definition is, however, it is entirely ambiguous. First of all, what is data? And second, what does “about” mean? (Pomerantz, Jeffrey. _Metadata (MIT Press Essential Knowledge series_, p. 19)

Despite Dr. Pomerantz's concerns, metadata as data about data is probably an adequate definition for our purposes. And, as he says, it is so common that you are likely to hear it many, many times, and perhaps say it many times yourself. Nonetheless, for completness, I give you Dr. Pomerantz's preferred definition:

>Metadata Is a Statement about a Potentially Informative Object. (_Metadata (MIT Press Essential Knowledge series)_ p. 26). 

### Examples

Here are some clips from the hospital bill from my birth. For each clip, we'll identify the primary data and associated meta as well as mention any metadata that seems to be missing.

#### Clip 1
![metadata 1](https://github.com/chapmanbe/raw-stuff/blob/main/MetaData/metadata1.png?raw=true)

- Primary Data: `F`
  - Metadata: `SEX`
  - Missing metadata: The meaning of `F`. We infer that `F` stands for `FEMALE`. We will later see examples of how sex is encoded in a more complex manner.
- Primary Data: `30`
    - Metadata: `PATIENT AGE`
    - Missing metadata: The units for age. We infer from the context (a maternity bill) that the age is in years. In a different context age could easily be in days or weeks. By common usage we assume that `30` is written in base 10 (per our example earlier).
----------

#### Clip 2

![metadata 2](https://github.com/chapmanbe/raw-stuff/blob/main/MetaData/metadata3.png?raw=true)

- Primary Data: `5.75`
    - Metadata: 
        - `Pharmacy`
        - `Amount`
        -  `106`. This is interesting because this datum, which is metadata for `5.75` has its own metadata: `Pharmacy Code` to which if we look at the back of the bill we can see that `Pharmacy Code 106` means "Central nervous system drugs".
    - Missing Metadata: The units for amount. 
	
![metadata 3](https://github.com/chapmanbe/raw-stuff/blob/main/MetaData/metadata4.png?raw=true)
    



"""

# ╔═╡ 7f2e9d8b-9085-4f65-b5e0-d45eb80de42d
md"""
# Knowledge

Pomerantz provided a starting definition of knowledge as "what you know, information that you have internalized." This definition has a number of relevant challenges.

The most well known definition of knowledge comes from the ancient Greek philosopher Plato who defined knowledge as __justified, true belief.__

How does Plato's definition compare to what Pomerantz provided and how do both it affect us in our Data To Knowledge work?

- __Knowledge must be justified__, that is you can explain why/how you know something. In the context of our use case, to "know" what we learn from the data entails being able to explain the model(s) we will develop in week 4.
- __Knowledge must be true,__ so we must have internalized true information and not misinformation or disinformation (see Floridi's figure at the top of this notebook. Perhaps more importantly, we should have an element of humility in what we say we know as medical/scientific knowledge is continually being revised or even reversed. As [Karl Popper](https://plato.stanford.edu/entries/popper/) famously pointed out, all scientific “knowledge” is tentative, something like “approximate temporary truth.”  /Popper
- __Knowledge is belief/internalized information__: This subjective view of knowledge, is something we will eventually be departing from as we will think of AI applications as having "knowledge."
"""

# ╔═╡ 4ea542ea-af63-4bf2-a242-ac35f1756bbe
md"""
## Detailed Blood Glucose Data Example

To wrap up this section, I'm sharing example data for a blood glucose measurement, as represented using HL7-FHIR standards.

What do you feel the primary data is here?

```Yaml
code:
  coding:
  - code: 15074-8
    display: Glucose [Moles/volume] in Blood
    system: http://loinc.org
effectivePeriod:
  start: '2013-04-02T09:30:10+01:00'
id: f001
identifier:
- system: http://www.bmc.nl/zorgportal/identifiers/observations
  use: official
  value: '6323'
interpretation:
- coding:
  - code: H
    display: High
    system: http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
issued: '2013-04-03T15:30:10+01:00'
performer:
- display: A. Langeveld
  reference: Practitioner/f005
referenceRange:
- high:
    code: mmol/L
    system: http://unitsofmeasure.org
    unit: mmol/l
    value: 6.2
  low:
    code: mmol/L
    system: http://unitsofmeasure.org
    unit: mmol/l
    value: 3.1
resourceType: Observation
status: final
subject:
  display: P. van de Heuvel
  reference: Patient/f001
valueQuantity:
  code: mmol/L
  system: http://unitsofmeasure.org
  unit: mmol/l
  value: 6.3
```

In my view the primary data here is `6.3` and everything else is metadata to help make this `6.3` useable.

Notice the difference in metadata detail for this one data versus the metadata for the primary data in my birth bill. This is a nice lead-in to our next topic which is data collection as abstraction.

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
# ╟─7feba529-29c5-4be5-aeba-00db5397c4da
# ╟─2acf7039-a934-43fa-b956-d581b5d49169
# ╟─2ccc8246-67cd-47ac-82a3-a06b23eb0a7d
# ╟─ccd85c80-99d8-48c5-8a23-143a402d6ff0
# ╟─9064db1d-3031-4e43-943d-1e601821e44f
# ╟─7a611c30-c745-4ade-881e-cec71e4f6973
# ╟─3b245fa2-1f83-45c3-9b3b-5fa62d002818
# ╟─9d4a1119-bbbe-4d26-af88-6789420ab030
# ╟─9a4bd43f-c2ae-4dc1-8b33-6a4422c4bcfb
# ╟─97c45761-4f20-4063-800f-ce9d79111466
# ╟─15193b6b-98b5-4cf6-bf65-3133ca734112
# ╟─bccd1a45-33aa-43a1-8f70-68cd9a40c41f
# ╟─4efcfeaa-eb86-4cf3-b4e9-60210278991a
# ╟─bd257e42-52b5-4fd6-9214-596617a5c10d
# ╟─d95f2476-0286-4aa3-ab25-c6d50b113c04
# ╟─08349618-e3a3-4d99-a56d-e145544266e2
# ╟─bc23a5b8-b489-4d5a-9fad-572e2c9aea4d
# ╟─7f2e9d8b-9085-4f65-b5e0-d45eb80de42d
# ╟─4ea542ea-af63-4bf2-a242-ac35f1756bbe
# ╟─78c5a32c-fef3-11eb-0560-6592672bbca5
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
