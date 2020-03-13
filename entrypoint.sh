# Displaying versions
node -v
hugo version

# Get Firebase Token
FIREBASE_TOKEN = $1
echo $FIREBASE_TOKEN

# Generate hugo site
hugo

# Deply it on Firebase
firebase use --token $FIREBASE_TOKEN
firebase deploy --non-interactive --token $FIREBASE_TOKEN