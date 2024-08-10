disp("HAT");
disp("Tauha Imran 22I-1239");
disp("Hamza Ahmed 22I-1339");
disp("Muhammad Ali 22I-0827");
disp(' ');
input('Enter any key to continue: ','s');
choice_1 = 1;
while choice_1 == 1
    disp("Press 1 to calculate the dimensions of your water tank");
    disp("Press 2 to calculate the cost of your water tank");
    choice = input("Enter your choice: ");
    if (choice == 1)
        volume = input('Enter volume of the tank in gallons = ');
        volume = volume*231;
        syms x positive
        v = 11.64.*x.^2 + ((23.28.*x)./(x-12).^2).*(volume+(12.*(x-12).^2)); %v = total volume of concrete
        area = diff(v);
        base_d = solve(area, x);
        h = (volume./(base_d-12).^2)+12;
        fprintf("Dimensions of base of water tank in feet: %8.3f", base_d/12);
        disp(' ');
        fprintf("Height of water tank in feet: %8.3f", h/12);
    elseif (choice == 2)
        x = input ("Enter the dimension of the sqaure base water tank in feet: ");
        x = 12*x;
        volume = 2310000; %10000 gallons in cubic inches
        h = ((volume/(x-12)^2)+12); 
        Cc = 0.136; %Cost of concrete per cubic inch
        Cs = 8.5; %Cost of steel bars per cubic inch
        S = 8.5; %Spacing between each steel bar in mesh
        Vc = 11.64*(x^2) + 23.28*x*h; %Total volume of concrete used to make tank (volume of walls - volume of steel mesh)
        Costc = Cc*Vc; %Total cost of concrete used to make the tankx
        Vs = (pi*(x^2) + (2*pi*x*h))/S ; %Total volume of steel bars used to create the steel mesh
        Costs = Cs*Vs;
        Total_Cost = Costs+Costc;
        fprintf("Total cost of concrete of tank: PKR %8.0f", Total_Cost);
        disp(' ');
        fprintf("Dimensions of square base in feet: %8.3f", x/12);
        disp(' ');
        fprintf("Height of tank in feet: %8.3f", h/12);
    end
    disp(' ');
    disp(' ');
    disp("Press 1 to run another query");
    disp("Press 0 to end proram");
    choice_1 = input("Choice: ");
end
