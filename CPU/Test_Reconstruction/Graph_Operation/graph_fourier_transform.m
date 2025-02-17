%% 
%   Title              graph fourier transform
%   Author         Xiaochen Han           
%   Date             Sep 23th, 2019
%   Version        1.0
%   Contact        guillermo_han97@sjtu.edu.cn
%
function [fourierGraph] = graph_fourier_transform(timeGraph, U)

% get graph fourier transform matrix
%U = graph_fourier_transform_matrix(graph.adjacent);

% graph fourier transform
[~, ~, n3] = size(timeGraph);
fourierGraph = zeros(size(timeGraph));
%%
% for i=1:n3
%     for j=1:n3 
%         fourierGraph(:, :, i) = fourierGraph(:, :, i) + U(i, j)*timeGraph(:, :, j);
%     end
% end  

%%
% for i=1:n2
%     fourierGraph(:,i,:)=(U*(reshape(timeGraph(:,i,:),n1,n3))')';
% end

%%
for i=1:n1
   for j=1:n2
       fourierGraph(i, j, :) = U*reshape(timeGraph(i, j, :),[],1);
  end
end

end




