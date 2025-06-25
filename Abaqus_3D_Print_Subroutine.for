C      #This is just a demo to show how the code is structured. For the full, working version, please visit our website.
C      ######################################################################
C      #################      CAE Assistant Company          ################
C      ##############         CAEassistant-com              #############
C      ###########   Copy right by CAE Assistant Company    ###############
C      ######################################################################

C      ######################################################################
C      ######################################################################
C      CAE Assisitant Services: 
C      Toturial Packages,Consultancy,Articles,Q&A,Video Gallery,Online Course
C      ######################################################################
C      Need help with your project? 
C      You can get initial free consultation from (our website caeassistant com)
C      ###################################################################### 	
C*** This is a user subroutine for Abaqus ***
C *** Some details have been hidden. For the full implementation, visit: ***
C *** https://caeassistant.com/product/3d-printing-simulation-in-abaqus/ ***
      SUBROUTINE USDFLD(FIELD,STATEV,PNEWDT,DIRECT,T,CELENT,
     1 TIME,DTIME,CMNAME,ORNAME,NFIELD,NSTATV,NOEL,NPT,LAYER,
     2 KSPT,KSTEP,KINC,NDI,NSHR,COORD,JMAC,JMATYP,MATLAYO,LACCFLA)
C
      INCLUDE 'ABA_PARAM.INC'
C
      CHARACTER*80 CMNAME,ORNAME
      CHARACTER*80 CPNAME,partname,str,str2   
      CHARACTER*3  FLGRAY(15)
      DIMENSION FIELD(NFIELD),STATEV(NSTATV),DIRECT(3,3),
     1 T(3,3),TIME(2)
      DIMENSION ARRAY(15),JARRAY(15),JMAC(*),JMATYP(*),COORD(*)
	REAL*8 EMOD,ENU,EBULK3,EG2,EG,EG3,ELAM,ONE,TWO,THREE,YE,DSTRESS(6),
     1etag,etak,alfaa,alfab,alfac,Ec,Ymax,alfa,kp,gama,Dp,n,d,E0,emax,
     2curtime,E(KSTEP),EY
      integer i,j      
      
	ONE=1.d0
	TWO=2.d0
	THREE=3.d0

C=======================INPUTS===================================
	 Ec=0.8E-3
	 Ymax=2.88E9
	 alfa=0.31
	 Dp=0.88E-3
C ***[HIDDEN]
C      print*,'TIME(2)===================================',TIME(2)       
      
      DO j=1,KSTEP
	Evs=0.0
      DO i=1,J
      Evs=Evs+exp(-(i-1)*(d/Dp))
      END DO
      E(j)=E0*exp(-COORD(3)/Dp)*Evs
      END DO
C      print*,'KSTEP=',KSTEP
C      print*,'E=',E
      CALL GETPARTINFO(NOEL, 1, CPNAME, LOCNUM, JRCD)      
      
C ***[HIDDEN]

       END DO
       STATEV(2)=(ONE-exp(-alfa*TIME(2)))
       STATEV(3)=(ONE-exp(-beta*(EY/Ec-ONE)))

       
C       print*,'COORD(3)=',COORD(3)
C       print*,'EY=',EY
C       print*,'Y=',Y
C       print*,'NPT=',NPT
C       print*,'NOEL=',NOEL
C       print*,'CPNAME=',CPNAME
   
       FIELD(1)=Y      
       STATEV(1)=EY

      RETURN  
      END

      SUBROUTINE  DISP(U,KSTEP,KINC,TIME,NODE,NOEL,JDOF,COORDS)
C
      INCLUDE 'ABA_PARAM.INC'
C
      DIMENSION U(3),TIME(2),COORDS(3)
      CHARACTER*80 CPNAME,partname,str
      REAL*8 d,Tmax,tp,T
C
      d=2e-3    !Thickness of layer
      Tmax=80.d0  !Maximum Temperature
      tp=1.d0    !Time period for every step
C ***[HIDDEN]
      print*,'TIME(2)===================================',TIME(2)      
C=========Specify layer number=i================================= 

C ***[HIDDEN]
   !   print*,'x=',x
      
C=========Temperature function===================================       

        print*,' U(1)=', U(1)

      RETURN
      END
