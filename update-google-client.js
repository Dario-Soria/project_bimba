const admin = require('firebase-admin');
const {google} = require('googleapis');
const fs = require('fs');

// Replace with your service account file path
const serviceAccount = require('./your-service-account.json'); // Rename to your file

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount),
});

async function updateGoogleClientId() {
  const projectId = serviceAccount.project_id;
  const client = await google.auth.getClient({
    credentials: serviceAccount,
    scopes: ['https://www.googleapis.com/auth/identitytoolkit'],
  });

  const identityToolkit = google.identitytoolkit({
    version: 'v2',
    auth: client,
  });

  try {
    const res = await identityToolkit.projects.oauthIdpConfigs.patch({
      name: `projects/${projectId}/oauthIdpConfigs/google.com`,
      updateMask: 'clientId,enabled',
      requestBody: {
        clientId: '927271663824-limjnu42lp51g8h14onc8u1tm2pkfcdi.apps.googleusercontent.com',
        enabled: true,
      },
    });

    console.log('Update successful:', res.data);
  } catch (err) {
    console.error('Error updating config:', err.response?.data || err.message);
  }
}

updateGoogleClientId();
