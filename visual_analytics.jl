### A Pluto.jl notebook ###
# v0.16.0

using Markdown
using InteractiveUtils

# ╔═╡ 8024e766-21b4-11ec-1f3e-5b4a2851886b
md"""
# Visual Analytics

This Data to Knowledge module of the course is focused on learning/gaining insight from data. In this notebook we will talk about using visualization to gain insight from our data. This is often termed __visual analytics__. This is distinct from visualization for the purpose of convcining

>Visual analytics is a science that involves the integration of interactive visual interfaces with analytical techniques to develop systems that facilitate reasoning over, and interpreta- tion of, complex data. ("Visual Analytics for Healthcare", Gotz, Caban, and Chen)

Visualizations can be divided into two broad categories

- Scientific Visualization
  - Visualization of data that has a natural spatial coordinate system. Examples of this would be medical imaging or meterological imaging.
- Information Visualization
  - Visualization of data that does not have a natural spatial coordiante system. 

For this project we will be limited to information visualization.

### Benefits and Challenges of Data Visualization

Data visualization benefits from the human brain's richly developed pattern recognition system. Data visualization is challenged by 


## 5 Principles for Visualization

In ["Selected Human Factors Issues in Information Visualization"](https://journals.sagepub.com/doi/abs/10.1518/155723409x448017), George Robertson, Mary Czerwinski, Danyel Fisher, and Bongshin Lee provide five principles for visualizaion

1. __Preattentive visualization__ (the use of preattentive perception in visual representations)
1. __Spatial stability__ (the use of spatially stable layouts to take advan- tage of human spatial memory)
1. __Proximity__ (related items being near each other), 
1. __Visual information-seeking mantra__ (the basic framework used by many visualization sys- tems), and (
1. __Sensemaking__ (the detailed cognitive processes humans use when trying to make sense of complex information).

The following sections provide summary excerpts from their chapter for each principle.

### Preattentive Visualization

>Research has shown that users are excellent at comparing some types of data and very bad at others. It is very easy to compare the lengths of two lines that share a baseline (as is usually done in a bar chart) and slightly harder to compare the angle of a pair of lines (as in a pie chart). Perceiving area is still harder, and perceiving volume is even more so. Last, comparing color hues quantitatively is the hardest processing task of all. This sug- gests that data graphics should be arranged to encourage users to compare simpler meas- ures rather than harder ones (Wickens & Hollands, 2000, p. 123). Thus, for example, it should be easier to compare bar chart lines than pie chart slices.

### Spatial Stability

>Humans have an automatic capability to store spatial memories; we are good at remem- bering where information is located in the world and on a screen. As such, information visualization design is enhanced by stability, all other things being equal. A stable visu- alization means that data will continue to be in the same place it had been, even as time changes. Maps, for example, are dramatic examples of stability: On most maps, Chicago will continue to be in the same relative place as it had been before. (This may not be true for a map that distorts based on the data, and these maps therefore force users to search for information). In contrast, a force-directed graph layout may be entirely differ- ent the next time a user looks at it.

### Proximity

>In addition to recognizing their own information, users are very quick to recognize groupings in visualizations. The gestalt laws of perception (Ware, 2004, p. 189) describe how users automatically group together components of diagrams, whether or not the designer intended those sections to be linked. The gestalt rules include notions of proximity, similarity, connectedness, continuity, and others.
>
>Spatial proximity means that users tend to assume that objects that are near each other are more closely related than they are to other objects. This allows users to interpret clus-ters on a scatter plot, for example.
>
>Connectedness suggests that users are likely to group together parts of diagrams that are connected to each other. Two points that are connected to each other with a line are likely to be seen as part of a whole, which can be useful for suggesting a temporal continuum. In graph drawing, graph nodes are connected by links; however, the stronger effect is disconnected islands within the graph (which cause all elements within each island to seem more closely related). Spatial proximity can contest with connectedness for dominance....
>
>Thus, the spatial proximity principle suggests that visualization designers should use space as an organizing principle by placing related items near each other. However, Wickens and Carswell (1995) discussed a broader concept of perceptual proximity in their prox- imity compatibility principle. They suggested that humans perceive proximity not only in space but also in color, time, intensity, and shape. A broader proximity principle, then, would suggest that visualization designers should use various properties of objects (their location in space, color, shape, intensity, and movement) to organize related objects to be near each other in perceptual space. So, for example, even if they are in different places on the graphic, two similar-looking objects (either similar colors or shapes) will be understood to be part of a group.

### Visual information-seeking mantra

>Shneiderman (1996) defined a mantra for visual information seeking that has been used as a framework for designing many information visualization applications: “overview first, zoom and filter, then details-on-demand” (p. 337).

### Sensemaking 

>Information visualization is usually part of an exploratory process whereby the user looks for patterns and exceptions and generates or refines hypotheses to discover unknown phe- nomena. The process of interpreting a visualization and acting upon it is referred to as sensemaking (Card, Mackinlay, & Shneiderman, 1999, p. 10). In general, sensemaking is the process of collecting data, interpreting them, and using them to figure out what the next step in data collection will be. Various authors have suggested different sensemaking processes (Card et al., 1999; Isenberg, Tang, & Carpendale, 2008; Klein, Moon, & Hoffman, 2006; Pirolli & Card, 2005; Russell, Stefik, Pirolli, & Card, 1993; Thomas & Cook, 2005), a general cycle usually follows a sequence of gathering data, choosing a structure in which to represent the data, representing them, and collecting insights. As a result of the insights, the analyst chooses either new data or a new schema or acts on the data. This cycle has been articulated by Card et al. (1999) to describe how an analyst chooses a representation and interacts with it.
A set of insights is the primary result of the sensemaking process, so one way of eval- uating the effectiveness of visualization is to measure the number and quality of insights. This is known as insight-based evaluation and is discussed later.
Figure 2.6 illustrates a sensemaking cycle for some types of intelligence analysts (Thomas & Cook, 2005). It is an adaptation from Pirolli and Card (2005). Notice that there are two main cycles: a foraging loop, in which data are examined for relevant evidence, and a sensemaking loop, in which different schemas and hypotheses are tested. The con- cepts for the foraging loop were developed earlier by Pirolli and Card (1999) in informa- tion foraging theory, which was motivated by biological foraging theories. Klein et al. (2006) described a data/frame model of sensemaking similar to that in Figure 2.6, with frames instead of schemas.
"""

# ╔═╡ 96218539-2747-44d0-b854-c9e197acc047
html"""
<h2>Designing Visualizations</h2>
<iframe width="560" height="315" src="https://www.youtube.com/embed/JjBpIHRemZs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
"""

# ╔═╡ Cell order:
# ╟─8024e766-21b4-11ec-1f3e-5b4a2851886b
# ╟─96218539-2747-44d0-b854-c9e197acc047
