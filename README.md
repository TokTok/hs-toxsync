# Tox account sync in Haskell

Sync between a Tox user's devices: an account as a graph of immutable,
content-addressed events, the state derived from it, and the sessions that
exchange missing events over Tox custom lossless packets.

It implements `doc/account-sync.md` in rs-toxcore-c, and checks itself against
the conformance cases in `test/conformance`, which every implementation must
pass.
