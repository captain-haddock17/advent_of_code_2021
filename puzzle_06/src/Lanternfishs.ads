package Lanternfishs is

    subtype Population is Long_Long_Integer; -- 64 bits

    subtype Life_Timer;
    Baby : constant Life_Timer := 8;
    subtype Life_Timer is Natural range 0 .. Baby;
    subtype SubLife_Timer is Natural range 0 .. 6;

    type Lanternfish;
    type Lanternfish_Ptr is access all Lanternfish;

    type Lanternfish is record
        Timer   : Life_Timer      := Baby;
        Sibling : Lanternfish_Ptr := null;
    end record;

    procedure new_fish (Timer : Life_Timer);

    -- function Aging (Timer : Life_Timer) return Life_Timer;

    function Next_Day return Population;

    function get_Nb_Fishs_in_School return Population;

    function Count_Fishs_in_School return Population;

end Lanternfishs;
