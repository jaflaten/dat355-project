# statusmeeting with Adrian 17.04.23
Attendees: Jørn-Are, Adrian.

> Q:Can you elaborate on what is important to have in a Behavioral model ? states and relationships i think is important.  (how attributes change? or how values change ? )

> A: Often you use state diagrams , activity diagrams or business process modelling. It depends on how complex the case is. If every state is a yes/no thing, then state diagram. 
> If its more complex that things get updated when a process is active, things are produced etc.. BPM will be a fitting choice. 
Model the state on how concepts and things happen, how it flows from A-Z.

Using BPM seems reasonable and we should look into this for behavioral modelling.

As our domain is fairly simple, he recommended that we should create a systematic plan, a plan to define goals define our goals, what we want to explore and what kind of outcome or result we want to have. In addition, how to connect this to the course corriculum. This is important for the writing of the report. The learning outcome is more important, not the product created.

Explore different types of constraints, For instance if a event starts it must end, and the timeMeet must be before timeBegin etc. 

Explore the coupling between the structural model and the behavioral model. Make sure that if a process change something in the data, the model should reflect this. For example there are defined rules between between sequence models and class diagrams, but there are no rules on the coupling between process models and domain models for instance. This is something we could look at, reflect on and write about. 