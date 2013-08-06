module ApplicationHelper
  $OPTIONS = [  ["Apartment for Rent", :apartment],
                ["House for Rent", :house],
                ["Room for Rent", :room],
                ["Share a Room", :shared]   ]
                
  $PLACES = {
    "Cupertino" => [37.3229978, -122.0321823],
    "Mountain View" => [37.3860517, -122.0838511],
    "San Francisco"=> [37.7749295, -122.4194155],
    "Palo Alto"=> [37.4418834, -122.1430195],
    "Los Altos"=> [37.3852183, -122.1141298],
    "Los Gatos"=> [37.2358078, -121.9623751],
    "San Mateo"=> [37.5629917, -122.3255254],
    "Freemont"=> [37.5482697, -121.9885719],
    "San Jose"=> [37.3393857, -121.8949555],
    "Redwood City"=> [37.48521520000001, -122.2363548],
    "Daly City"=> [37.6879241, -122.4702079],
    "Burlingame"=> [37.5841026, -122.3660825],
    "Milpitas"=> [37.4282724, -121.9066238]
	}
	
  $STATES = [ 	
	['Select a State', 'None'],
	['Alabama', 'AL'], 
	['Alaska', 'AK'],
	['Arizona', 'AZ'],
	['Arkansas', 'AR'], 
	['California', 'CA'], 
	['Colorado', 'CO'], 
	['Connecticut', 'CT'], 
	['Delaware', 'DE'], 
	['District Of Columbia', 'DC'], 
	['Florida', 'FL'],
	['Georgia', 'GA'],
	['Hawaii', 'HI'], 
	['Idaho', 'ID'], 
	['Illinois', 'IL'], 
	['Indiana', 'IN'], 
	['Iowa', 'IA'], 
	['Kansas', 'KS'], 
	['Kentucky', 'KY'], 
	['Louisiana', 'LA'], 
	['Maine', 'ME'], 
	['Maryland', 'MD'], 
	['Massachusetts', 'MA'], 
	['Michigan', 'MI'], 
	['Minnesota', 'MN'],
	['Mississippi', 'MS'], 
	['Missouri', 'MO'], 
	['Montana', 'MT'], 
	['Nebraska', 'NE'], 
	['Nevada', 'NV'], 
	['New Hampshire', 'NH'], 
	['New Jersey', 'NJ'], 
	['New Mexico', 'NM'], 
	['New York', 'NY'], 
	['North Carolina', 'NC'], 
	['North Dakota', 'ND'], 
	['Ohio', 'OH'], 
	['Oklahoma', 'OK'], 
	['Oregon', 'OR'], 
	['Pennsylvania', 'PA'], 
	['Rhode Island', 'RI'], 
	['South Carolina', 'SC'], 
	['South Dakota', 'SD'], 
	['Tennessee', 'TN'], 
	['Texas', 'TX'], 
	['Utah', 'UT'], 
	['Vermont', 'VT'], 
	['Virginia', 'VA'], 
	['Washington', 'WA'], 
	['West Virginia', 'WV'], 
	['Wisconsin', 'WI'], 
	['Wyoming', 'WY']
	]
end