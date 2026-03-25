# Turno

**Turno** is a modern mobile hub for classic tabletop games — built for fast matches, clean UX, and scalable multiplayer architecture.

## Vision

Turno is not just a collection of games.

It is a unified platform where players can:
- play classic games like chess, poker, and durak
- instantly start matches
- play with friends
- track progress and stats
- enjoy a clean, modern mobile experience

## MVP Scope

Initial release includes:

- Durak
- Chess
- Poker

Core features:
- Quick match
- Play with friends
- Game sessions
- Profile & stats
- Basic social layer

## Principles

Turno is built on:

- Minimalist UX
- Fast interaction (2–3 taps to start a game)
- Clean visual hierarchy
- No visual noise
- Shared design system across all games
- Scalable architecture

## Project Structure

```text
apps/
  mobile/         # Flutter app shell and UI foundation

packages/
  ui/             # shared UI components
  game-core/      # game logic engines
  utils/          # shared utilities

docs/             # product, UX, and architecture documentation
assets/           # brand assets (logo, icons, etc.)
```

## Current App Status

The initial Flutter application shell now lives in `apps/mobile`.
It currently provides the navigation foundation, theme setup, and placeholder feature screens for the mobile experience.

## Status

Project is in early development stage.

Current focus:
- brand system
- mobile app shell foundation
- repository structure
- MVP definition
- architecture planning

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md)

## License

MIT
