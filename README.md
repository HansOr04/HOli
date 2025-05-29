# 🎓 Sistema de Catequesis - Frontend

Frontend completo para el Sistema de Gestión de Catequesis desarrollado con **Next.js 14**, **TypeScript**, **Tailwind CSS** y **shadcn/ui**.

## 🎨 Paleta de Colores

### Colores Principales
```css
/* Azul Naval - Header y elementos principales */
--primary-dark: #071739;     /* Fondo header */
--primary-blue: #4B6382;     /* Botones principales */
--primary-light: #A4B5C4;    /* Elementos secundarios */

/* Azul Gris - Elementos UI */
--secondary-blue: #CDD5DB;   /* Contenedores y cards */
--light-gray: #A68868;       /* Elementos de acción */

/* Dorado/Beige - Acentos */
--accent-gold: #E3C39D;      /* Botones secundarios */
--warm-beige: #A68868;       /* Estados y badges */
```

### Sistema de Estados
```css
/* Estados de Asistencia */
--success-green: #10B981;    /* Presente */
--danger-red: #EF4444;       /* Ausente */
--warning-orange: #F59E0B;   /* Pendiente */

/* Estados de Certificados */
--approved: #10B981;         /* Aprobado */
--pending: #F59E0B;          /* Pendiente */
--emitted: #3B82F6;          /* Emitido */

/* Gradientes de Grupos */
--group-a: #F97316;          /* Naranja */
--group-b: #84CC16;          /* Verde lima */
--group-c: #22C55E;          /* Verde */
```

## 📁 Estructura del Proyecto

```
sistema-catequesis-frontend/
├── src/
│   ├── app/
│   │   ├── (auth)/
│   │   │   └── login/
│   │   │       └── page.tsx
│   │   ├── dashboard/
│   │   │   ├── page.tsx                    # Dashboard principal
│   │   │   ├── catequizandos/
│   │   │   │   ├── page.tsx               # Lista de catequizandos
│   │   │   │   ├── nuevo/
│   │   │   │   │   └── page.tsx           # Crear catequizando
│   │   │   │   └── [id]/
│   │   │   │       └── page.tsx           # Detalle catequizando
│   │   │   ├── catequistas/
│   │   │   │   ├── page.tsx               # Lista de catequistas
│   │   │   │   └── nuevo/
│   │   │   │       └── page.tsx           # Crear catequista
│   │   │   ├── grupos/
│   │   │   │   ├── page.tsx               # Lista de grupos
│   │   │   │   ├── nuevo/
│   │   │   │   │   └── page.tsx           # Crear grupo
│   │   │   │   └── [id]/
│   │   │   │       └── page.tsx           # Detalle grupo
│   │   │   ├── asistencia/
│   │   │   │   └── page.tsx               # Control de asistencia
│   │   │   ├── certificados/
│   │   │   │   ├── page.tsx               # Lista certificados
│   │   │   │   ├── nuevo/
│   │   │   │   │   └── page.tsx           # Crear certificado
│   │   │   │   └── emision-masiva/
│   │   │   │       └── page.tsx           # Emisión masiva
│   │   │   └── administracion/
│   │   │       ├── parroquias/
│   │   │       │   └── page.tsx           # Gestión parroquias
│   │   │       ├── niveles/
│   │   │       │   └── page.tsx           # Gestión niveles
│   │   │       ├── usuarios/
│   │   │       │   └── page.tsx           # Gestión usuarios
│   │   │       └── reportes/
│   │   │           └── page.tsx           # Reportes
│   │   ├── globals.css
│   │   ├── layout.tsx
│   │   └── page.tsx
│   ├── components/
│   │   ├── ui/                            # Componentes shadcn/ui
│   │   ├── layout/
│   │   │   ├── Header.tsx                 # Header principal
│   │   │   ├── Sidebar.tsx                # Barra lateral
│   │   │   └── Navigation.tsx             # Navegación principal
│   │   ├── forms/
│   │   │   ├── CatequizandoForm.tsx       # Formulario catequizando
│   │   │   ├── CatequistaForm.tsx         # Formulario catequista
│   │   │   ├── GrupoForm.tsx              # Formulario grupo
│   │   │   └── CertificadoForm.tsx        # Formulario certificado
│   │   ├── tables/
│   │   │   ├── CatequizandosTable.tsx     # Tabla catequizandos
│   │   │   ├── AsistenciaTable.tsx        # Tabla asistencia
│   │   │   └── CertificadosTable.tsx      # Tabla certificados
│   │   ├── cards/
│   │   │   ├── CatequizandoCard.tsx       # Card catequizando
│   │   │   ├── CatequistaCard.tsx         # Card catequista
│   │   │   ├── GrupoCard.tsx              # Card grupo
│   │   │   └── StatsCard.tsx              # Card estadísticas
│   │   ├── modals/
│   │   │   ├── ConfirmModal.tsx           # Modal confirmación
│   │   │   └── FormModal.tsx              # Modal formularios
│   │   └── charts/
│   │       ├── AsistenciaChart.tsx        # Gráfico asistencia
│   │       └── StatsChart.tsx             # Gráfico estadísticas
│   ├── lib/
│   │   ├── api.ts                         # Cliente API
│   │   ├── auth.ts                        # Utilidades autenticación
│   │   ├── utils.ts                       # Utilidades generales
│   │   └── constants.ts                   # Constantes
│   ├── hooks/
│   │   ├── useAuth.ts                     # Hook autenticación
│   │   ├── useApi.ts                      # Hook API
│   │   └── useLocalStorage.ts             # Hook localStorage
│   ├── types/
│   │   ├── auth.ts                        # Tipos autenticación
│   │   ├── catequizando.ts                # Tipos catequizando
│   │   ├── grupo.ts                       # Tipos grupo
│   │   └── api.ts                         # Tipos API
│   └── styles/
│       └── globals.css                    # Estilos globales
├── public/
│   ├── images/
│   │   ├── logo.png                       # Logo del sistema
│   │   ├── login-bg.jpg                   # Fondo login
│   │   └── default-avatar.png             # Avatar por defecto
│   └── icons/
├── tailwind.config.js
├── next.config.js
├── package.json
└── README.md
```

## 🚀 Instalación y Configuración

### 1. Prerrequisitos
```bash
Node.js 18+
npm o yarn
```

### 2. Instalación
```bash
# Clonar repositorio
git clone https://github.com/tu-usuario/sistema-catequesis-frontend.git
cd sistema-catequesis-frontend

# Instalar dependencias
npm install
```

### 3. Configuración de Variables de Entorno
```bash
# .env.local
NEXT_PUBLIC_API_URL=http://localhost:3000/api
NEXT_PUBLIC_APP_NAME="Sistema de Catequesis"
NEXT_PUBLIC_ARQUIDIOCESIS="Arquidiócesis de Quito"
```

### 4. Ejecutar en desarrollo
```bash
npm run dev
```

## 📦 Dependencias Principales

```json
{
  "dependencies": {
    "next": "^14.0.0",
    "react": "^18.2.0",
    "react-dom": "^18.2.0",
    "typescript": "^5.0.0",
    "@tailwindcss/forms": "^0.5.7",
    "tailwindcss": "^3.3.0",
    "@radix-ui/react-dialog": "^1.0.5",
    "@radix-ui/react-dropdown-menu": "^2.0.6",
    "@radix-ui/react-select": "^2.0.0",
    "@radix-ui/react-tabs": "^1.0.4",
    "lucide-react": "^0.294.0",
    "recharts": "^2.8.0",
    "react-hook-form": "^7.47.0",
    "@hookform/resolvers": "^3.3.2",
    "zod": "^3.22.4",
    "axios": "^1.6.0",
    "date-fns": "^2.30.0",
    "react-hot-toast": "^2.4.1",
    "framer-motion": "^10.16.0"
  }
}
```

## 🎯 Rutas y Navegación

### Rutas Principales

#### 🔐 Autenticación
```
/login                          # Página de login
```

#### 📊 Dashboard
```
/dashboard                      # Dashboard principal
```

#### 👥 Catequizandos
```
/dashboard/catequizandos        # Lista de catequizandos
/dashboard/catequizandos/nuevo  # Crear catequizando
/dashboard/catequizandos/[id]   # Detalle/editar catequizando
```

#### 👨‍🏫 Catequistas
```
/dashboard/catequistas          # Lista de catequistas
/dashboard/catequistas/nuevo    # Crear catequista
/dashboard/catequistas/[id]     # Detalle/editar catequista
```

#### 👥 Grupos
```
/dashboard/grupos               # Lista de grupos
/dashboard/grupos/nuevo         # Crear grupo
/dashboard/grupos/[id]          # Detalle grupo
```

#### ✅ Asistencia
```
/dashboard/asistencia           # Control de asistencia
```

#### 🎖️ Certificados
```
/dashboard/certificados         # Lista de certificados
/dashboard/certificados/nuevo   # Crear certificado individual
/dashboard/certificados/emision-masiva # Emisión masiva
```

#### ⚙️ Administración
```
/dashboard/administracion/parroquias    # Gestión parroquias
/dashboard/administracion/niveles       # Gestión niveles
/dashboard/administracion/usuarios      # Gestión usuarios
/dashboard/administracion/reportes      # Reportes y estadísticas
```

## 🧩 Componentes Principales

### 1. Header Component
```tsx
// components/layout/Header.tsx
- Logo del sistema
- Navegación principal (PRINCIPAL | ADMINISTRACIÓN | CUENTA)
- Información del usuario logueado
- Selector de parroquia (si aplica)
```

### 2. Navigation Tabs
```tsx
// components/layout/Navigation.tsx
- DASHBOARD: Vista general
- CATEQUIZANDOS: Gestión de estudiantes
- CATEQUISTAS: Gestión de profesores
- GRUPOS: Gestión de clases
- ASISTENCIA: Control de asistencias
- CERTIFICADOS: Gestión de certificados
```

### 3. Formularios
```tsx
// Características comunes:
- Validación con react-hook-form + zod
- Estados de carga
- Mensajes de error
- Diseño responsive
- Campos obligatorios marcados
```

### 4. Tablas de Datos
```tsx
// Características comunes:
- Paginación
- Búsqueda y filtros
- Ordenamiento
- Acciones por fila (Ver, Editar, Eliminar)
- Estados visuales
- Exportación (CSV, PDF)
```

### 5. Cards de Información
```tsx
// Características comunes:
- Información resumida
- Estados visuales claros
- Acciones rápidas
- Porcentajes de asistencia
- Badges de estado
```

## 🎨 Sistema de Diseño

### Tipografía
```css
/* Títulos principales */
.title-xl { @apply text-3xl font-bold text-gray-900; }
.title-lg { @apply text-2xl font-semibold text-gray-800; }
.title-md { @apply text-xl font-medium text-gray-800; }

/* Texto de cuerpo */
.body-lg { @apply text-lg text-gray-700; }
.body-md { @apply text-base text-gray-600; }
.body-sm { @apply text-sm text-gray-500; }

/* Labels y metadatos */
.label { @apply text-sm font-medium text-gray-700; }
.caption { @apply text-xs text-gray-500; }
```

### Botones
```css
/* Botón principal */
.btn-primary {
  @apply bg-[#4B6382] text-white px-4 py-2 rounded-lg 
         hover:bg-[#071739] transition-colors duration-200;
}

/* Botón secundario */
.btn-secondary {
  @apply bg-[#E3C39D] text-gray-800 px-4 py-2 rounded-lg 
         hover:bg-[#A68868] hover:text-white transition-colors duration-200;
}

/* Botón de peligro */
.btn-danger {
  @apply bg-red-500 text-white px-4 py-2 rounded-lg 
         hover:bg-red-600 transition-colors duration-200;
}

/* Botón de éxito */
.btn-success {
  @apply bg-green-500 text-white px-4 py-2 rounded-lg 
         hover:bg-green-600 transition-colors duration-200;
}
```

### Estados y Badges
```css
/* Estado Activo */
.badge-active {
  @apply bg-green-100 text-green-800 px-2 py-1 rounded-full text-xs font-medium;
}

/* Estado Presente */
.badge-present {
  @apply bg-green-500 text-white px-3 py-1 rounded-full text-sm;
}

/* Estado Ausente */
.badge-absent {
  @apply bg-red-500 text-white px-3 py-1 rounded-full text-sm;
}

/* Estado Pendiente */
.badge-pending {
  @apply bg-yellow-500 text-white px-3 py-1 rounded-full text-sm;
}

/* Estado Aprobado */
.badge-approved {
  @apply bg-blue-500 text-white px-3 py-1 rounded-full text-sm;
}
```

### Cards y Contenedores
```css
/* Card principal */
.card {
  @apply bg-white rounded-lg shadow-sm border border-gray-200 p-6;
}

/* Card con hover */
.card-hover {
  @apply bg-white rounded-lg shadow-sm border border-gray-200 p-6 
         hover:shadow-md transition-shadow duration-200;
}

/* Contenedor de estadísticas */
.stats-container {
  @apply bg-[#A68868] text-white rounded-lg p-6 text-center;
}
```

## 📱 Responsive Design

### Breakpoints
```css
/* Mobile First */
.container {
  @apply px-4 mx-auto;
}

/* Tablet */
@media (min-width: 768px) {
  .container { @apply px-6; }
}

/* Desktop */
@media (min-width: 1024px) {
  .container { @apply px-8 max-w-7xl; }
}

/* Large Desktop */
@media (min-width: 1280px) {
  .container { @apply px-12; }
}
```

### Grid System
```css
/* Grid de catequizandos */
.catequizandos-grid {
  @apply grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6;
}

/* Grid de grupos */
.grupos-grid {
  @apply grid grid-cols-1 lg:grid-cols-2 xl:grid-cols-3 gap-6;
}

/* Grid de estadísticas */
.stats-grid {
  @apply grid grid-cols-2 lg:grid-cols-4 gap-4;
}
```

## 🔧 Configuración Tailwind

```js
// tailwind.config.js
module.exports = {
  content: [
    './src/pages/**/*.{js,ts,jsx,tsx,mdx}',
    './src/components/**/*.{js,ts,jsx,tsx,mdx}',
    './src/app/**/*.{js,ts,jsx,tsx,mdx}',
  ],
  theme: {
    extend: {
      colors: {
        primary: {
          dark: '#071739',
          blue: '#4B6382', 
          light: '#A4B5C4',
        },
        secondary: {
          blue: '#CDD5DB',
          beige: '#A68868',
        },
        accent: {
          gold: '#E3C39D',
        },
        group: {
          a: '#F97316',
          b: '#84CC16', 
          c: '#22C55E',
        }
      },
      fontFamily: {
        sans: ['Inter', 'system-ui', 'sans-serif'],
      },
      animation: {
        'fade-in': 'fadeIn 0.5s ease-in-out',
        'slide-up': 'slideUp 0.3s ease-out',
      },
      keyframes: {
        fadeIn: {
          '0%': { opacity: '0' },
          '100%': { opacity: '1' },
        },
        slideUp: {
          '0%': { transform: 'translateY(10px)', opacity: '0' },
          '100%': { transform: 'translateY(0)', opacity: '1' },
        },
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
  ],
}
```

## 🔐 Autenticación y Autorización

### Middleware de Autenticación
```typescript
// middleware.ts
export function middleware(request: NextRequest) {
  const token = request.cookies.get('auth-token')?.value
  
  if (!token && request.nextUrl.pathname.startsWith('/dashboard')) {
    return NextResponse.redirect(new URL('/login', request.url))
  }
}
```

### Hook de Autenticación
```typescript
// hooks/useAuth.ts
export const useAuth = () => {
  const [user, setUser] = useState<User | null>(null)
  const [loading, setLoading] = useState(true)
  
  // Lógica de autenticación
}
```

## 📡 Integración con API

### Cliente API
```typescript
// lib/api.ts
const API_BASE_URL = process.env.NEXT_PUBLIC_API_URL

export const apiClient = axios.create({
  baseURL: API_BASE_URL,
  headers: {
    'Content-Type': 'application/json',
  },
})

// Interceptores para tokens JWT
apiClient.interceptors.request.use((config) => {
  const token = localStorage.getItem('auth-token')
  if (token) {
    config.headers.Authorization = `Bearer ${token}`
  }
  return config
})
```

### Hooks de API
```typescript
// hooks/useApi.ts
export const useCatequizandos = () => {
  const [data, setData] = useState([])
  const [loading, setLoading] = useState(false)
  
  const fetchCatequizandos = async (filters: Filters) => {
    // Lógica de fetch
  }
  
  return { data, loading, fetchCatequizandos }
}
```

## 🧪 Testing

### Configuración Jest
```bash
npm install --save-dev jest @testing-library/react @testing-library/jest-dom
```

### Tests de Componentes
```typescript
// __tests__/components/CatequizandoCard.test.tsx
import { render, screen } from '@testing-library/react'
import { CatequizandoCard } from '@/components/cards/CatequizandoCard'

describe('CatequizandoCard', () => {
  it('renders catequizando information correctly', () => {
    // Test implementation
  })
})
```

## 🚀 Deployment

### Build de Producción
```bash
npm run build
npm run start
```

### Docker
```dockerfile
FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]
```

### Variables de Entorno de Producción
```bash
NEXT_PUBLIC_API_URL=https://api.catequesis.com/api
NEXT_PUBLIC_APP_NAME="Sistema de Catequesis"
NEXT_PUBLIC_ARQUIDIOCESIS="Arquidiócesis de Quito"
```

## 📚 Documentación Adicional

### Flujo de Navegación
1. **Login** → Validación → **Dashboard**
2. **Dashboard** → Selección de módulo → **Gestión específica**
3. **Módulos principales**: Catequizandos, Catequistas, Grupos, Asistencia, Certificados
4. **Administración**: Solo para roles autorizados

### Estados de la Aplicación
- **Loading**: Spinners y skeletons
- **Empty**: Estados vacíos con llamadas a la acción
- **Error**: Mensajes de error con opciones de retry
- **Success**: Confirmaciones y feedback positivo

### Accesibilidad
- Navegación por teclado
- Lectores de pantalla
- Alto contraste
- Textos alternativos
- Focus visible

## 🤝 Contribución

1. Fork del proyecto
2. Crear rama feature: `git checkout -b feature/nueva-funcionalidad`
3. Commit cambios: `git commit -m 'feat: agregar nueva funcionalidad'`
4. Push a la rama: `git push origin feature/nueva-funcionalidad`
5. Crear Pull Request

## 📄 Licencia

Este proyecto está bajo la Licencia MIT.

---

**Desarrollado para la Arquidiócesis de Quito © 2025**
