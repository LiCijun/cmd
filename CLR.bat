@echo off
  for /D %%d in (c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z) do del /f /s /q %%d:\$RECYCLE.BIN\*
rem for /D %%d in (c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z) do rd /s /q %%d:\$RECYCLE.BIN
rem pause