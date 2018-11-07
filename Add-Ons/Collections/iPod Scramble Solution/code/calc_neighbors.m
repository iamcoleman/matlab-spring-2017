function k4 = calc_neighbors(k,siz)

% k = h0 ; 
h0 = [] ; 
for i = 1:size(k,1)
    [i1,i2] = ind2sub(siz,k(i,end)) ; % x and y coordinates of last index in k{i} cell
    n2 = neighbors(siz,[i1 i2]) ; % n2 contains x and y coordinates of neighbors as column vectors
    k2 = sub2ind(siz,n2(:,1),n2(:,2)) ; % convert back to vector indexing of array.
    k2 = setdiff(k2,k(i,:)) ; k2 = k2(:) ; % delete letter combinations that use the same letter twice
    % construct matrix, where each row represents a valid letter
    % combination.
    h0 = [h0 ; repmat(k(i,:),length(k2),1) k2] ; 
end
k4 = h0 ; 
