const functions = require('firebase-functions');
const admin = require('firebase-admin');
admin.initializeApp();

exports.sendFcmMessage = functions.https.onRequest(async (req, res) => {
    try {
        const { token, title, body, data, android } = req.body;

        const message = {
            notification: {
                title: title,
                body: body,
            },
            token: token,
            data: data,
            android: android
        };

        const response = await admin.messaging().send(message);
        res.status(200).send(`Message sent: ${response}`);
    } catch (error) {
        res.status(500).send(`Error sending message: ${error}`);
    }
});
