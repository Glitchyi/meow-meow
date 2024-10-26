<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Impossible Password Creator</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            background-image: url('image.jpg'); /* Replace with your image URL */
            background-size: cover; /* Makes the image cover the entire background */
            background-position: center; /* Centers the image */
            background-repeat: no-repeat; /* Prevents the image from repeating */
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9); /* Slight transparency */
            width: 100%;
            max-width: 400px;
            padding: 30px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: center;
        }

        h1 {
            font-size: 24px;
            color: #333;
            margin-bottom: 10px;
        }

        p {
            color: #555;
            margin-bottom: 20px;
        }

        input[type="password"] {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #0056b3;
        }

        #message {
            color: #d9534f;
            font-weight: bold;
            margin-top: 15px;
        }
    </style>
    <script>
        function checkPassword() {
            const password = document.getElementById("password").value;
            const message = document.getElementById("message");

            if (password.length < 5) {
                message.textContent = "Well... is that what u call a password duh??";
            } else if (password.length < 8) {
                message.textContent = "Ummmm... are you a password or just too short to qualify..? ";
            }else if (!/[A-Z]/.test(password)) {
                message.textContent = "A little caps lock never hurt anyone, you know.";
            } else if (!/[0-9]/.test(password)) {
                message.textContent = "You missed the memo—add a number, please.";
            } else if (!/[!@#$%^&*]/.test(password)) {
                message.textContent = "Psst... Special characters are a thing. Use one?";
            } else if (password.length < 12) {
                message.textContent = "So close! Just add a few more characters. You’re almost there!";
            } else {
                message.textContent = "Hmm, it’s good... but could it be stronger? Try again!";
            }
        }
    </script>
</head>
<body>
    <div class="container">
        <h1>Create an *Actually* Strong Password</h1>
        <p>We’ll let you know when it’s *finally* good enough.</p>
        <input type="password" id="password" placeholder="Enter your password">
        <button onclick="checkPassword()">Check Password</button>
        <p id="message"></p>
    </div>
</body>
</html>