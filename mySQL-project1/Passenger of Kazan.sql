-- Section1
UPDATE Stadium
	SET Stadium.capacity = Stadium.capacity - 100;
-- Section2
UPDATE Passenger
    SET Passenger.balance = Passenger.balance + 1000;    
-- Section3
UPDATE Passenger
    SET Passenger.balance = Passenger.balance + 300
    WHERE Passenger.name = 'Mahdi';