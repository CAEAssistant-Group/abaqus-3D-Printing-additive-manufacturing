#      This is just a demo to show how the code is structured. For the full, working version, please visit our website.
#      ######################################################################
#      #################      CAE Assistant Company          ################
#      ##############         www CAEassistant com              #############
#      ###########   Copy right by CAE Assistant Company    ###############
##      ######################################################################
#      ONLY the BUYER  of this package has permission to use its codes.
#	   Any distribution of this subroutine is illegal and will be prosecuted 
#      ######################################################################
#      ######################################################################
#      CAE Assisitant Services: 
#      Toturial Packages,Consultancy,Articles,Q&A,Video Gallery,Online Course
#      ######################################################################
#      Need help with your project? 
#      You can get initial free consultation from (Support CAEassistant com)
#      ######################################################################
from abaqus import *
from abaqusConstants import *

# User inputs for geometric parameters, material properties, and other settings
# *** Some details have been hidden. For the full implementation, visit: ***
# https://caeassistant.com/product/3d-printing-simulation-in-abaqus/

fields = (('path directory','E:/'))
Pathd=getInputs(fields=fields,dialogTitle='Specify path directory', )

fields = (('thickness of layer:','[HIDDEN]'), ('number of layers:', '[HIDDEN]'), ('x reference:', '[HIDDEN]'), ('z reference:', '[HIDDEN]'))
h, n, xc,zc=getInputs(fields=fields,dialogTitle='Specify Geometric Parameters', )

fields = (('k1','[HIDDEN]'), ('theta1k:', '[HIDDEN]'), ('k2:', '[HIDDEN]'), ('theta2k:', '[HIDDEN]'))
k1,theta1k , k2,theta2k=getInputs(fields=fields,dialogTitle='Conductivity', )

# Material properties
mdb.models['Model-1'].Material(name='Material-1')
mdb.models['Model-1'].materials['Material-1'].Conductivity(
    temperatureDependency=ON, table=((k1, theta1k), (k2, theta2k)))
mdb.models['Model-1'].materials['Material-1'].Density(table=(('[HIDDEN]', ), ))
mdb.models['Model-1'].materials['Material-1'].LatentHeat(table=(('[HIDDEN]', '[HIDDEN]', '[HIDDEN]'), ))
mdb.models['Model-1'].materials['Material-1'].SpecificHeat(
    temperatureDependency=ON, table=(('[HIDDEN]', '[HIDDEN]'), ('[HIDDEN]', '[HIDDEN]')))

# Assembly process (Hidden)
# *** Full assembly details are available in the package: ***
# https://caeassistant.com/product/3d-printing-simulation-in-abaqus/

# Mesh generation (Hidden)
# Job submission
mdb.Job(name='Job-1', model='Model-1', userSubroutine=Pathd[0]+'\Subroutine-1.for')
mdb.jobs['Job-1'].submit(consistencyChecking=OFF)
