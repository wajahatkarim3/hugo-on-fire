# Displaying versions
node -v
hugo version

# Get Firebase Token
if [ -z "${FIREBASE_TOKEN}" ]; then
    echo "FIREBASE_TOKEN is missing"
    exit 1
fi

# Generate hugo site
hugo

# Deply it on Firebase
firebase use --token "${FIREBASE_TOKEN}"
firebase deploy --non-interactive --token "${FIREBASE_TOKEN}"