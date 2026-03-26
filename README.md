# Painter 🎨

[![Processing](https://img.shields.io/badge/Processing-4.0+-0066CC?style=for-the-badge&logo=processing&logoColor=white)](https://processing.org/)

A cool drawing application built with Processing. Paint with customizable colors, brush thickness, and transparency. Create line art or dotted masterpieces!

## 🎨 Features

### Drawing Tools
| Tool | Function |
|------|----------|
| **Line** | Draw smooth continuous lines |
| **Dotted Line** | Draw dotted patterns (spaced ellipses) |

### Customization
| Control | Effect |
|---------|--------|
| **Color** | RGB sliders (+/-) with preset colors (Grey, Black) |
| **Thickness** | Adjust brush size (1–unlimited) |
| **Transparency** | Control opacity (0–255) |
| **Eraser** | Switch to white brush |

### Interface
- **Real-time coordinates** - Displays mouse X/Y position
- **Live color preview** - Colors update instantly as you adjust RGB values
- **New Drawing** - Clear canvas and start fresh

## 🎯 How to Use

### Controls
- **Draw** - Click and drag on the canvas (right side)
- **Select Tool** - Click any button on the left panel

### Color Controls
| Button | Effect |
|--------|--------|
| RED + / - | Increase/decrease red value |
| GREEN + / - | Increase/decrease green value |
| BLUE + / - | Increase/decrease blue value |
| GREY | Set color to grey (128, 128, 128) |
| BLACK | Set color to black (0, 0, 0) |

### Brush Controls
| Button | Effect |
|--------|--------|
| THICKNESS + / - | Increase/decrease brush size |
| TRANSPARENCY + / - | Increase/decrease opacity |
| ERASER | Switch to white brush (full opacity) |
| NEW DRAWING | Clear entire canvas |

## 📸 Screenshots

<table>
  <tr>
    <td align="center">
      <img alt="Blank" src="https://github.com/user-attachments/assets/d50c7a24-ee94-4b8e-8030-d08700d6c792"/>
      <br/><em>Blank Canvas</em>
    </td>
    <td align="center">
      <img alt="Drawing" src="https://github.com/user-attachments/assets/45c3e10b-864f-464c-8e7e-3f8a95de70ab"/>
      <br/><em>Sample Drawing</em>
    </td>
  </tr>
</table>

## 🛠️ Built With

- **Processing** - Java-based creative coding environment
- **Object-Oriented Programming** - Button class for modular UI

## 📁 Project Structure
```
Painter/
├── Painter.pde 
├── Button.pde 
└── README.md
```

## 🚀 Installation

### Prerequisites
- [Processing](https://processing.org/download) 4.0 or higher

### Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/devjsonpan/Painter.git
   cd Painter
   
2. **Open in Processing**
- Launch the Processing IDE
- Open Painter.pde
- Click the Run button (play icon)
