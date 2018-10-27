function HM=HandMatrix()
    
    HM = false([4,13]);
    r5 = randperm(52,52);
    HM(r5(1:5))=true;
    
    ShowHand(HM)
    
end