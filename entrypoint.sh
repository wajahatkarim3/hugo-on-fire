# Displaying versions
node -v
hugo version

# Get Firebase Token
FIREBASE_TOKEN = $1

# Generate hugo site
hugo

# Deply it on Firebase
firebase deploy --token $FIREBASE_TOKEN