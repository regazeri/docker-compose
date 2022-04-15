set -e

mongo <<EOF
use $MONGO_INITDB_DATABASE
db.createUser({
  user: '$MONGODB_USER',
  pwd: '$MONGODB_PASS',
  roles: [
    {
      role: 'dbOwner',
      db: '$MONGO_INITDB_DATABASE',
    },
  ],
});
EOF
