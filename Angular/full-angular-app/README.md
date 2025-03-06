#Routing

/
/app
/about

top level routes, root leve

/app/module1
/app/feature2  

child routes

top level routing -> RouterModule.forRoot()
child level routing -> RouterModule.forChildren()


### Services

A Service is angular future which is basically a class
with functions that could be used reusably across multiple
components

in other words a service provides reusable features to multiple components

A service need to be injected in to the component in order to use it

we follow constructor inject 

By default services are singleton (everywhere if you inject
you will get same object)

but if you want a different object that could also be done


#### HttpClient Module

##### HttpClient service 

using this service we can call api using get,post,put,delete....methods

and all of this methods return object of type Observable

### Observable

In reactive programming(asynchronous coding), Observable is
an object which listens to responses and process it as an when
the original function sends it 

this is used for processing logic that requires time and where
data cannot be returned immediatly