function ShowHand(CM)
    
    
    pics = create_deck;
    pics = pics(logical(CM));
    len = length(pics);
    for r = 1:len;
        [x1,map1] = imread(pics{r});
        subplot(1,len,r,'align');
        imshow(x1,map1);
    end    
       
    function [deckpics] = create_deck()

        rmax = 4;
        cmax = 13;
        deckpics = cell(rmax,cmax);
        suit = {'S','D','H','C'};
        num = {'A','K','Q','J','10','9','8','7','6','5','4','3','2'};
        
        for k = 1:rmax
            for c = 1:cmax
                deckpics{k,c} = [num{c} suit{k}  '.jpg'];
            end
        end
        
    end
end