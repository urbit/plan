# Infra Offsite Q1 2022 Worldbuilding Notes

- a role is a per-group set of users (a subset of the group's members), with a name
- a permission is probably represented as a path
  - each channel type defines its own permissions
  - the %groups UI will have a "roles and permissions" page where you can edit which roles have which permissions in which channels, and edit which users have which roles
  - %groups itself needs permissions
    - add and remove channels
    - add and remove members, and edit their roles
    - add, remove, and edit roles
- no perks
  - it's just a role
  - automated role promotion and demotion should be in third-party apps, not in %groups
  - we need an API so external apps can read and write roles
- we should be careful to think through all the different entry points for channels
  - from the %groups UI
  - from the app launcher ("grid")
  - from the chat input (e.g. sign a transaction from chat)
    - a button next to the text field where you can select a special chat message to send
    - an inline interaction for chat messages so you can (e.g.) co-sign a transaction that someone else proposed
