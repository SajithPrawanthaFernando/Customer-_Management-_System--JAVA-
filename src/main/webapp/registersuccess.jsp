<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Event Management System</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles.css">

    <style>

body {
            background-image: url('blue.jpg');
            background-size: cover;
            color: white; 
        }
        .navbar {
            background-color: rgba(0, 0, 0, 0.7);  
        }

.event-card, .feedback-card, .card {
    background-color: rgba(0, 0, 0, 0.5); 
    color: white;
    border: none;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
    transition: all 0.3s ease;
}

.event-card:hover, .feedback-card:hover, .card:hover {
    transform: scale(1.05);
}

.btn-primary {
    background-color: #007bff;
    border: none;
    transition: background-color 0.3s ease;
}

.footer {
            background-color: rgba(0, 0, 0, 0.7);  
            color: white; 
            padding: 10px;
            padding-top: 25px;
        }


</style>

</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <a class="navbar-brand" href="#">Event Management System</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Events</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Create Event</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Sign In</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="userinsert.jsp">Sign Up</a>
                </li>
            </ul>
        </div>
    </nav><br><br>

    <div class="container mt-5" id="current-events">
        <h2>Current Events</h2>
        <div class="row">
            <div class="col-md-6 event-card">
                <div class="card">
                    <img src="audience.jpg" class="card-img-top" alt="Event 1 Image">
                    <div class="card-body">
                        <h5 class="card-title">Starry Night Soiree</h5>
                        <p class="card-text">Join us under the twinkling stars for an evening filled with laughter, 
                            music, and unforgettable moments. Your presence will light up the night and make our celebration truly special.</p>
                        <a href="event1.html" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 event-card">
                <div class="card">
                    <img src="8e.jpg" class="card-img-top" alt="Event 2 Image">
                    <div class="card-body">
                        <h5 class="card-title">Harmony Rhythms: A Melodic Journey</h5>
                        <p class="card-text">Feel the magic of music at 'Harmony Rhythms.' 
                            An unforgettable night of soulful melodies awaits. Join us for an enchanting musical journey!</p>
                        <a href="event2.html" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="container mt-5" id="buy-tickets">
        <h2>Buy Tickets</h2>
        <div class="row">
            <div class="col-md-3">
                <div class="card">
                    <img src="21949959.jpg" class="card-img-top" alt="Ticket Option 1 Image">
                    <div class="card-body">
                        <h5 class="card-title">Enchanted Masquerade Ball</h5>
                        <p class="card-text">Price: $20</p>
                        <a href="ticket1.html" class="btn btn-primary">Buy Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <img src="image (1).jpg" class="card-img-top" alt="Ticket Option 2 Image">
                    <div class="card-body">
                        <h5 class="card-title">Neon Nights Dance Party</h5>
                        <p class="card-text">Price: $25</p>
                        <a href="ticket2.html" class="btn btn-primary">Buy Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <img src="Salsa-party.jpg" class="card-img-top" alt="Ticket Option 3 Image">
                    <div class="card-body">
                        <h5 class="card-title">Salsa Fiesta: Rhythms of the World</h5>
                        <p class="card-text">Price: $30</p>
                        <a href="ticket3.html" class="btn btn-primary">Buy Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <img src="5dc452-20160422-prince-party22.jpg" class="card-img-top" alt="Ticket Option 4 Image">
                    <div class="card-body">
                        <h5 class="card-title">Glamour Gala: A Night of Elegance</h5>
                        <p class="card-text">Price: $35</p>
                        <a href="ticket4.html" class="btn btn-primary">Buy Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    

    <div class="container mt-5" id="customer-feedback">
        <h2>Customer Feedback</h2>
        <div class="row">
            <div class="col-md-6 feedback-card">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Jack Sparrow</h5>
                        <p class="card-text">"Great event! Enjoyed every moment of it."</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 feedback-card">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Thomas Shelby</h5>
                        <p class="card-text">"Highly recommended. Will definitely attend again!"</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="footer text-center mt-5">
        <p>&copy; 2023 Event Management System. All rights reserved.</p>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>