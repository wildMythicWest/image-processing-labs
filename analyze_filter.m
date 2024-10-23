function analyze_filter(input_filter, filter_name)

  a = input_filter(1, 1);
  b = input_filter(1, 2);
  c = input_filter(1, 3);
  d = input_filter(2, 1);
  e = input_filter(2, 2);
  f = input_filter(2, 3);
  g = input_filter(3, 1);
  h = input_filter(3, 2);
  k = input_filter(3, 3);


  Wm=-pi:.1:pi;

  Wn=Wm';

  X=ones(size(Wn))*Wm;

  Y=Wn*ones(size(Wm));



  R=a*cos(X+Y)+b*cos(Y)+c*cos(X-Y)+d*cos(X)+e+f*cos(X)+g*cos(X-Y)+h*cos(Y)+k*cos(X+Y);

  I=-a*sin(X+Y)-b*sin(Y)+c*sin(X-Y)-d*sin(X)+f*sin(X)-g*sin(X-Y)+h*sin(Y)+k*sin(X+Y);


  M=sqrt(R.*R+I.*I);

  F=atan(I./R);

  figure('Name', [filter_name, ' 1'], 'NumberTitle', 'off');

  mesh(Wm,Wn, M)

  xlabel(' Wm ');

  ylabel(' Wn ');

  zlabel('Amplitude M');

  figure('Name', [filter_name, ' 2'], 'NumberTitle', 'off');

  mesh(Wm,Wn, F)

  xlabel(' Wm ');

  ylabel(' Wn ');

  zlabel('Phase F');
end
