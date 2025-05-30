# 🧠 MindNest Frontend - Arquitectura & Documentación

**Arquitectura Híbrida Feature-Based + Atomic Design** que combina principios de desarrollo moderno para crear una base de código escalable y mantenible.

## 🏗️ Arquitectura del Proyecto

### Patrón Arquitectónico: **Feature-Based Architecture con Atomic Design**

Este proyecto implementa una arquitectura híbrida que combina:

1. **Feature-Based Architecture**: Organización de código por características/funcionalidades
2. **Atomic Design Pattern**: Sistema de componentes jerárquico y reutilizable
3. **Separation of Concerns**: Separación clara entre routing, lógica de negocio y presentación

### Principios Fundamentales

- **🔄 Reutilización**: Componentes diseñados para ser reutilizados en múltiples contextos
- **📦 Encapsulación**: Cada módulo tiene responsabilidades bien definidas
- **🎯 Escalabilidad**: Estructura que permite crecimiento sin complejidad
- **🧪 Testabilidad**: Componentes aislados y fáciles de probar
- **📱 Responsive**: Diseño adaptable a diferentes dispositivos

## 📁 Estructura del Proyecto

```
frontend-mindnest/
├── app/                         # Next.js App Router (Solo rutas)
│   ├── (auth)/                  # Rutas de autenticación
│   └── (dashboard)/             # Rutas del dashboard
│   ├── layout.tsx               # Layout raíz
│   └── page.tsx                 # Página principal
│
├── src/                         # Código fuente organizado
│   ├── components/              # Sistema de componentes
│   │   ├── ui/                  # Componentes básicos (Átomos)
│   │   │   ├── Button/          # Botones reutilizables
│   │   │   ├── Input/           # Campos de entrada
│   │   │   ├── Select/          # Selectores
│   │   │   └── FileUpload/      # Subida de archivos
│   │   ├── forms/               # Formularios complejos (Moléculas)
│   │   │   └── AuthForm/        # Formulario unificado auth
│   │   ├── layout/              # Componentes de layout (Organismos)
│   │   │   └── AuthLayout/      # Layout de autenticación
│   │   └── features/            # Componentes específicos por feature
│   │
│   ├── hooks/                   # Custom hooks reutilizables
│   │   └── useAuth.ts           # Hook de autenticación
│   ├── services/                # Servicios y API calls
│   │   └── api/                 # Configuración de APIs
│   │       └── auth.ts          # Servicios de autenticación
│   ├── types/                   # Definiciones de TypeScript
│   │   ├── auth.types.ts        # Tipos de autenticación
│   │   ├── space.types.ts       # Tipos de espacios
│   │   └── common.types.ts      # Tipos comunes
│   ├── utils/                   # Utilidades y helpers
│   ├── styles/                  # Estilos compartidos
│   ├── assets/                  # Recursos estáticos
│   └── mocks/                   # Datos de prueba
│
├── public/                      # Archivos públicos estáticos
└── configuración...             # Archivos de configuración
```

## 🧩 Sistema de Componentes (Atomic Design)

### Niveles de Abstracción

#### 🔸 **Átomos** (`src/components/ui/`)

Componentes básicos no divisibles:

- **Button/**: Botones con variantes (primary, secondary, etc.)
- **Input/**: Campos de entrada unificados con validación
- **Select/**: Selectores con opciones configurables
- **FileUpload/**: Componente de subida de archivos

#### 🔸 **Moléculas** (`src/components/forms/`)

Combinaciones de átomos con funcionalidad específica:

- **AuthForm/**: Formulario unificado para login y registro
  - Maneja ambos modos con un solo componente
  - Validación integrada
  - Type-safe con TypeScript

#### 🔸 **Organismos** (`src/components/layout/`)

Secciones complejas de la interfaz:

- **AuthLayout/**: Layout para páginas de autenticación
  - Logo configurable
  - Completamente independiente
  - Responsive design

#### 🔸 **Features** (`src/components/features/`)

Componentes específicos por funcionalidad:

- Organizados por dominio de negocio
- Combinan múltiples organismos y moléculas

## 🔧 Tecnologías y Herramientas

- **Framework**: Next.js 15+ (App Router)
- **Lenguaje**: TypeScript
- **Estilos**: Tailwind CSS
- **Arquitectura**: Feature-Based + Atomic Design
- **Path Aliases**: Configurados para imports limpios

## 📝 Convenciones de Desarrollo

### Imports

Utilizar path aliases configurados:

```typescript
// ✅ Correcto
import { Button } from '@/src/components/ui/Button';
import { AuthForm } from '@/src/components/forms/AuthForm';
import { AuthService } from '@/src/services/api/auth';

// ❌ Evitar
import { Button } from '../../../components/ui/Button';
```

### Estructura de Componentes

Cada componente tiene su propia carpeta con:

```
ComponentName/
├── ComponentName.tsx    # Componente principal
├── index.ts            # Barrel export
└── ComponentName.test.tsx # Tests (si aplica)
```

### Naming Conventions

- **Componentes**: PascalCase (`AuthForm`, `UserProfile`)
- **Archivos**: PascalCase para componentes, camelCase para utils
- **Carpetas**: PascalCase para componentes, camelCase para otros
- **Variables**: camelCase (`userName`, `isLoading`)

## 🎯 Ejemplos de Uso

### AuthForm Unificado

```typescript
// Login
<AuthForm type="login" onSubmit={handleLogin} />

// Registro
<AuthForm type="register" onSubmit={handleRegister} />
```

### Componentes UI

```typescript
// Input con validación
<Input
  label="Email"
  type="email"
  required
  error={errors.email}
/>

// Botón con variantes
<Button variant="primary" size="lg">
  Crear Cuenta
</Button>
```

## 🏆 Ventajas de Esta Arquitectura

1. **Mantenibilidad**: Código organizado y fácil de localizar
2. **Reutilización**: Componentes diseñados para uso múltiple
3. **Escalabilidad**: Estructura que crece ordenadamente
4. **Developer Experience**: Imports limpios y navegación intuitiva
5. **Team Collaboration**: Convenciones claras para trabajo en equipo
6. **Performance**: Componentes optimizados y tree-shaking efectivo
7. **Type Safety**: TypeScript en toda la aplicación
8. **Consistencia**: Sistema de diseño unificado

## 📊 Estado de Migración

### ✅ Completado

- [x] Sistema de tipos unificado
- [x] Componentes UI básicos (Button, Input, Select, FileUpload)
- [x] AuthLayout optimizado
- [x] Servicios de autenticación
- [x] Migración páginas login y register, forgot-password, bookings, dashboard, favorite, users
- [x] Configuración tsconfig.json

### 📋 Pendiente

- [ ] Home, shared, spaces, components (Toda esta seccion tiene que ser corregida y migrada a la nueva arquitectura)
- [ ] AuthForm unificado (login + registro)
- [ ] Componentes features específicas
- [ ] Quitar toda la lógica implementada para manejar (Desktop y Mobile), manejar unicamente las versiones Mobile aplicando responsive con CSS en los componentes necesarios. Rutas donde hay que aplicar todo este cambio (Home, shared, spaces, components).

## 📚 Recursos y Referencias

- [Next.js Documentation](https://nextjs.org/docs)
- [Atomic Design Methodology](https://atomicdesign.bradfrost.com/)
- [Feature-Based Architecture](https://feature-sliced.design/)
- [TypeScript Best Practices](https://typescript-eslint.io/rules/)

## 🤝 Contribución

### Guías para Desarrolladores

1. **Crear nuevos componentes**: Seguir la estructura de carpetas establecida
2. **Mantener consistencia**: Usar los componentes UI base antes de crear nuevos
3. **Documentar cambios**: Actualizar esta documentación con nuevas funcionalidades
4. **Type Safety**: Siempre definir tipos TypeScript apropiados

### Proceso de Revisión

1. Verificar que se siguen las convenciones de naming
2. Comprobar que los imports usan path aliases
3. Validar que los componentes son reutilizables
4. Asegurar que se mantiene la separación de responsabilidades

---

**Nota**: Esta arquitectura ha sido diseñada específicamente para el proyecto MindNest, combinando las mejores prácticas de desarrollo frontend moderno con las necesidades específicas del dominio de negocio.

**Versión**: 1.0.0 | **Última actualización**: 30/05/2025
