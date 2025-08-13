# Portfolio - Flutter Web Portfolio Site

A modern, creative, and fully responsive Flutter Web portfolio site with sophisticated animations, glassmorphism design, and professional polish.

## ✨ Features

- **Modern Design**: Semi-minimal design with strong personality using glassmorphism cards, subtle gradients, and refined typography
- **Fully Responsive**: Optimized for all screen sizes (mobile, tablet, desktop, xlarge)
- **Sophisticated Animations**: Staggered entrance animations, scroll-triggered reveals, parallax effects, and micro-interactions
- **Theme Support**: Dark/light mode toggle with preference persistence
- **Performance Optimized**: 60 FPS animations with graceful degradation for low-end devices
- **Accessibility**: Semantic order, keyboard navigation, good contrast ratios

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (stable channel, version 3.8.1 or higher)
- Dart SDK
- Web browser for testing

### Installation

1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd folio
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the development server**
   ```bash
   flutter run -d chrome
   ```

4. **Build for production**
   ```bash
   flutter build web
   ```

## 🎨 Customization

### Adding Your Content

The portfolio uses a data-driven approach. You can customize the content by:

1. **Editing the sample data** in `lib/core/providers/portfolio_provider.dart`
2. **Providing LaTeX resume content** (see LaTeX Integration section below)
3. **Customizing the theme** in `lib/core/app_theme.dart`

### LaTeX Integration

To integrate your LaTeX resume:

1. **Parse LaTeX content** and convert to the `PortfolioData` model structure
2. **Update the portfolio provider** with your parsed data
3. **Add your assets** (images, resume PDF) to the `assets/` folder

The system is designed to handle structured data from LaTeX parsing, including:
- Personal information (name, title, contact details)
- Experience timeline
- Project portfolio with screenshots
- Skills and proficiency levels
- Education and certifications
- Social media links

### Theme Customization

Modify `lib/core/app_theme.dart` to customize:
- Color palette
- Typography
- Button styles
- Card designs

## 📱 Responsive Breakpoints

- **Small**: < 600px (Mobile)
- **Medium**: 600px - 1024px (Tablet)
- **Large**: 1024px - 1440px (Desktop)
- **XLarge**: > 1440px (Large Desktop)

## 🏗️ Project Structure

```
lib/
├── core/
│   ├── app_theme.dart          # Theme configuration
│   ├── theme_provider.dart     # Theme state management
│   ├── models/
│   │   └── portfolio_data.dart # Data models
│   ├── providers/
│   │   └── portfolio_provider.dart # Data providers
│   └── utils/
│       └── responsive_utils.dart   # Responsive utilities
├── widgets/
│   ├── navigation/
│   │   └── app_navigation.dart # Navigation components
│   └── sections/
│       └── hero_section.dart   # Hero section
└── main.dart                   # App entry point
```

## 🎭 Animation Features

- **Staggered Entrances**: Elements appear in sequence for visual flow
- **Scroll-Triggered**: Animations activate when sections come into view
- **Parallax Effects**: Subtle background movement for depth
- **Micro-Interactions**: Hover effects, button animations, and transitions
- **Performance**: Optimized animations maintaining 60 FPS

## 🚀 Deployment

### GitHub Pages

1. **Build the project**
   ```bash
   flutter build web --base-href "/your-repo-name/"
   ```

2. **Deploy to GitHub Pages**
   - Push the `build/web` contents to your repository
   - Enable GitHub Pages in repository settings

### Firebase Hosting

1. **Install Firebase CLI**
   ```bash
   npm install -g firebase-tools
   ```

2. **Initialize Firebase**
   ```bash
   firebase init hosting
   ```

3. **Build and deploy**
   ```bash
   flutter build web
   firebase deploy
   ```

### Netlify

1. **Build the project**
   ```bash
   flutter build web
   ```

2. **Drag and drop** the `build/web` folder to Netlify

## 🧪 Testing

Run the test suite:

```bash
flutter test
```

The project includes basic widget tests for:
- Landing hero section
- Theme toggle functionality
- Navigation components

## 📦 Dependencies

### Core Dependencies
- `flutter_riverpod`: State management
- `animated_text_kit`: Text animations
- `visibility_detector`: Scroll-triggered animations
- `flutter_staggered_animations`: Staggered entrance effects

### UI & Design
- `flutter_svg`: SVG support
- `lottie`: Lottie animations
- `rive`: Rive animations

### Utilities
- `url_launcher`: External link handling
- `shared_preferences`: Theme preference storage
- `http`: Network requests

## 🔧 Development Notes

### Performance Tips
- Use `RepaintBoundary` for complex animations
- Avoid unnecessary rebuilds with proper state management
- Optimize images and assets for web

### Adding New Sections
1. Create section widget in `lib/widgets/sections/`
2. Add to main page in `lib/main.dart`
3. Update navigation in `lib/widgets/navigation/app_navigation.dart`

### Custom Animations
- Use `AnimationController` for complex animations
- Implement `VisibilityDetector` for scroll-triggered effects
- Follow the established animation patterns in existing sections

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## 📞 Support

For questions or support:
- Create an issue in the repository
- Contact: [your-email@example.com]

---

**Built with Flutter & ❤️**
