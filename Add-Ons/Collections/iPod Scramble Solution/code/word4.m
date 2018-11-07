% Scramble Solver

clear;
sf1 = @(cellstr,pat) find(~cellfun('isempty',strfind(cellstr,pat))) ;

%% Get List of Allowable Words
% Lots of downloadable word lists.  I eventually stumbled on the Scramble
% word list from Zynga.
% fid = fopen('wordlist\scrabble4.txt'); % alt word list
fid = fopen('wordlist\ScrambleDictionary.txt') ;
s = textscan(fid, '%s'); s = s{:} ;
fclose(fid); clear fid ; 

%% Turning 'Qu' into 'Q' in Wordlist
% In Scramble, 'Q' is always represented as 'Qu', so as long as the Q isn't
% at the end, delete the following U.
iq = sf1(s,'q') ; % all words containing Q
i2 = cell2mat(strfind(s,'q')) ; % where in the word does Q show up?

for i = 1:length(iq)
    if i2(i) < length(s{iq(i)}) % if it shows up before the end
        s{iq(i)}(i2(i)+1) = [] ; % delete the next letter (presumably U)
    end
end

%% Input Board
t = 'abcdefghijklmnopqrstuvwxyz' ; 

siz =[5 5] ; % assumes board size is 5 by 5

%%% =========  Input Board Here  ============
r = reshape((1:prod(siz))',siz) ; bd = t(r) % board is just the serial alphabet
% bd = ['egheovlsnroedudw'] ; % example 4x4 board from my iPod
bd = ['eadcxmognvapunvtiiifolhoz'] ; % example 5 x 5 board from my iPod
% ============================================

bd = reshape(bd,siz)' ; % reshape the character array to the board
bd1 = num2cell(bd) % show the board

%% How to think about the board
%{   
  <===  %% uncomment me for some commentary on board organization

% The Board may be represented as coordinate pairs
for i1 = 1:siz(1)
    for i2 = 1:siz(2)
        bd2{i1,i2} = sprintf('%d,%d',i1,i2) ;
    end
end
bd2

% Or more simply, it may be represented as just a bunch of indexes into the
% array
bd3 = reshape(1:numel(bd1),siz)

% note that neither bd1, bd2 nor bd3 are used.
%}  

%% All possible combinations of letters on the board, pruning along the way.

slen = cellfun('length',s) ; % lengths of all words in the dictionary
wordsize = 10 ; % maximum word size to be searched
clear k ; 
k{1} = (1:numel(bd))' ; % all possible single letter words on the board
for i = 2:wordsize
    % as the word size grows, a number of possible words in a board grows
    % exponentially.
    fprintf('calculating words %d elements long...',i) ; 

    % just return the first 'i' characters of each word in the dictionary
    ab1 = cellfun(@(x) x(1:i),s(slen>=i),'uniformoutput',false) ;     
    
    k{i} = calc_neighbors(k{i-1},siz) ; % calculate nearest neighbors of each element
    x = bd(k{i}) ; % all possible i-letter words on the board (... say 2)
    y = mat2cell(x,ones(size(x,1),1),size(k{i},2)) ; % convert from a character array to a single column cell array
    
    % find all letter combinations that do not show up in any dictionary words
    [c,ia] = setdiff(y,ab1) ; % 'ia' has indices of all unpromising words

    k{i}(ia,:) = [] ; % prune these branches, or else this program will take forever!

    fprintf('size = %d by %d.\n',size(k{i})) ; % returns the size of the branches that still look promising
end

%% Generate the final found word list

clear wds ; 
for i = 3:wordsize
    x = bd(k{i}) ; 
    % wds{3} will contain all three letter combinations on the board that
    % intersect with the first three letters of the words in the
    % dictionary.
    wds{i} = mat2cell(x,ones(size(x,1),1),size(k{i},2)) ; % mat2cell is picky...
end
wd = cat(1,wds{:}) ;  % string out all letter combinations as possible words

[c,ia,ib] = intersect(s,wd) ; % calculate intersection of possible words with dictionary words

c = insert_qu(c) ; % insert back the letter 'U' after 'Q'
clen = cellfun('length',c) ; % calculate word length
[x,i] = sort(clen,'descend') ; % sort by word length. longer words give you more points.
c(i)  % show words!

beep

