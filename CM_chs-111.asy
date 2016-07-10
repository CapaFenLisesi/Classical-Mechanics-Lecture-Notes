if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="CM_chs-111";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

texpreamble("\usepackage{xeCJK}");
texpreamble("\setCJKmainfont{SimSun}");
usepackage("amsmath");
usepackage("siunitx");
import graph;
import math;
size(200);
//37页4.57受力分析1
pair O;
real theta,alpha,P,T1,T2,l,r;
O = (0,0);
theta = 130;
alpha = 50;
P = 2;
T1 = P/Sin(180-alpha)*Sin(theta-90);
T2 = P/Sin(180-alpha)*Sin(alpha-theta+90);
draw(Label("$\boldsymbol{T}_2$",EndPoint,Relative(E)),O--T2*dir(180-theta),Arrow);
draw(Label("$\boldsymbol{T}_1$",EndPoint,Relative(E)),T2*dir(180-theta)--T2*dir(180-theta)+T1*dir(alpha+180-theta),Arrow);
draw(Label("$\boldsymbol{P}_1+\boldsymbol{P}_2$",EndPoint,Relative(E)),T2*dir(180-theta)+T1*dir(alpha+180-theta)--O,Arrow);
l = T2/Sin(theta-alpha)*Sin(alpha);
r = 0.1;
draw(l*dir(-theta)--O--l*dir(0),dashed);
draw(T2*dir(180-theta)--T2*dir(180-theta)+l*dir(-theta+alpha),dashed);
draw(Label("$\theta$",MidPoint,Relative(E)),arc(O,r,-theta,0),Arrows);
r = 0.15;
draw(Label("$\alpha$",MidPoint,Relative(E)),arc(T2*dir(180-theta),r,-theta,-theta+alpha),Arrows);