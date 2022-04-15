db.createUser({
  user:"user-test",
  pwd:"pass-test",
  roles: [
      {
          role:"readWrite",
          db: "arc-live"

      }
  ]

});
