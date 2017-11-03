function ReverseDNA = function4(DNA)
DNA2 = "";
DNA = reverse(DNA);
for i = 1:length(DNA)
if DNA(i) == 'A'
    DNA2 = DNA2 + 'T';
elseif DNA(i) == 'G'
    DNA2 = DNA2 + 'C';
elseif DNA(i) == 'C'
    DNA2 = DNA2 + 'G';
elseif DNA(i) == 'T'
    DNA2 = DNA2 + 'A';
end
ReverseDNA = DNA2;
end