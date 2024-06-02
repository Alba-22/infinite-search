import 'package:infinite_search/app/models/post_model.dart';

List<PostModel> posts = [
  PostModel(
    id: '6e2b67de-3f49-4905-a840-19654dbbaffb',
    title: "10 Tips for Improving Frontend Performance",
    description:
        "Learn how to optimize your frontend code for better performance and user experience.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 5, 30),
    status: StatusEnum.relevant,
    tags: const [Tag.frontend, Tag.backend],
  ),
  PostModel(
    id: '9a5b0f4b-1b4d-4d69-828d-4d4ec788e1a4',
    title: "Introduction to Responsive Web Design",
    description:
        "Discover the principles and techniques behind creating responsive websites that adapt to various screen sizes and devices.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 5, 27),
    status: StatusEnum.recent,
    tags: const [Tag.backend, Tag.mobile],
  ),
  PostModel(
    id: '8a6726c5-f354-41c8-9619-f2da5f0f54b5',
    title: "Exploring the Latest Trends in Mobile App Development",
    description:
        "Stay updated with the current trends and technologies shaping the world of mobile app development.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 5, 25),
    status: StatusEnum.recent,
    tags: const [Tag.database],
  ),
  PostModel(
    id: 'f5b78c78-74d0-4746-94a7-05867d392d47',
    title: "Building Scalable Backend Systems with Node.js",
    description:
        "Learn how to architect and develop backend systems that can handle high traffic and scale effortlessly using Node.js.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 4, 22),
    status: StatusEnum.recent,
    tags: const [Tag.frontend],
  ),
  PostModel(
    id: '21c67159-c3ee-4a5b-8779-d327e3604386',
    title: "The Role of Databases in Modern Web Development",
    description:
        "Explore the different types of databases and their applications in modern web development.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 5, 23),
    status: StatusEnum.relevant,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: '9e29e3e7-9d6f-46d0-92c1-d1c00e191a0c',
    title: "Best Practices for Designing User Interfaces",
    description:
        "Learn about the fundamental principles and best practices for designing intuitive and user-friendly interfaces.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 5, 20),
    status: StatusEnum.recent,
    tags: const [Tag.backend],
  ),
  PostModel(
    id: '70729f1d-d091-4c66-8590-ef57d82e93a6',
    title: "Getting Started with Flutter Development",
    description:
        "A beginner's guide to getting started with Flutter for building beautiful and native cross-platform mobile applications.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 5, 18),
    status: StatusEnum.recent,
    tags: const [Tag.database, Tag.frontend],
  ),
  PostModel(
    id: '8e40439f-67b7-42d4-9fa5-3af8973adf64',
    title: "Exploring the Latest Features of React",
    description:
        "Stay updated with the latest features and enhancements in React for building powerful and interactive web applications.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 5, 15),
    status: StatusEnum.recent,
    tags: const [Tag.design],
  ),
  PostModel(
    id: 'ab963235-7a53-4814-8b6f-927a1cf40a1e',
    title: "Building RESTful APIs with Express.js",
    description:
        "Learn how to design and develop RESTful APIs using Express.js for building scalable and maintainable backend systems.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 5, 12),
    status: StatusEnum.recent,
    tags: const [Tag.frontend, Tag.mobile],
  ),
  PostModel(
    id: 'c28ae623-77e2-4bfb-b59b-dcf1c7b55c13',
    title: "Introduction to NoSQL Databases",
    description:
        "An introductory guide to understanding NoSQL databases and their advantages in modern application development.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 5, 10),
    status: StatusEnum.relevant,
    tags: const [Tag.backend],
  ),
  PostModel(
    id: 'd2c4e90e-bcb6-4314-ae3a-dfcfb6b5c5a1',
    title: "10 Common Design Patterns Every Developer Should Know",
    description:
        "Explore the most commonly used design patterns and their implementations in various programming languages.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 5, 5),
    status: StatusEnum.recent,
    tags: const [Tag.mobile, Tag.database],
  ),
  PostModel(
    id: '4f47630f-92d3-468d-809b-66a01b80e63a',
    title: "Getting Started with Kotlin for Android Development",
    description:
        "An introductory tutorial to Kotlin programming language for developing Android applications.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 5, 2),
    status: StatusEnum.recent,
    tags: const [Tag.frontend],
  ),
  PostModel(
    id: 'f6f9064c-87d8-45cc-866d-6c29bff02eb1',
    title: "Optimizing Database Queries for Better Performance",
    description:
        "Learn how to optimize your database queries for better performance and scalability in your applications.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 4, 28),
    status: StatusEnum.relevant,
    tags: const [Tag.backend],
  ),
  PostModel(
    id: 'e8b1122e-94b5-4f7f-8390-cf5b68e1e518',
    title: "Securing Your Backend APIs with JWT Authentication",
    description:
        "A comprehensive guide to implementing JWT authentication for securing your backend APIs against unauthorized access.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 4, 25),
    status: StatusEnum.recent,
    tags: const [Tag.frontend, Tag.database],
  ),
  PostModel(
    id: '024af87e-85fc-4cfa-b792-cbb5405ec38c',
    title: "Best Practices for Responsive Web Design",
    description:
        "Discover the best practices and techniques for creating responsive web designs that work across all devices and screen sizes.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 4, 22),
    status: StatusEnum.recent,
    tags: const [Tag.design],
  ),
  PostModel(
    id: '218e4cf5-f4d4-4f6f-88f1-1f88b14a50e2',
    title: "Exploring the Latest Features of Swift",
    description:
        "Stay updated with the latest features and enhancements in Swift for developing modern iOS and macOS applications.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 4, 20),
    status: StatusEnum.recent,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: '97a1d7a0-2b93-481b-b3e3-42cbe4c3a5d2',
    title: "Understanding ACID Properties in Database Systems",
    description:
        "An in-depth explanation of the ACID properties and their significance in ensuring data integrity and consistency in database systems.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 4, 17),
    status: StatusEnum.relevant,
    tags: const [Tag.backend],
  ),
  PostModel(
    id: 'f815a6f0-c52b-4bb2-90e3-9b57a7034b0b',
    title: "Advanced Techniques for Frontend Performance Optimization",
    description:
        "Discover advanced techniques and tools for optimizing frontend performance and delivering a seamless user experience.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 4, 15),
    status: StatusEnum.recent,
    tags: const [Tag.frontend, Tag.mobile],
  ),
  PostModel(
    id: '0cbd00b7-9833-4c83-9d24-7b24df28c46f',
    title: "Introduction to GraphQL for Modern API Development",
    description:
        "An introductory guide to GraphQL and its benefits for building modern and efficient APIs.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 4, 13),
    status: StatusEnum.recent,
    tags: const [Tag.database],
  ),
  PostModel(
    id: 'cc1f784f-1d55-4529-b91e-cd86f9c4e504',
    title: "Design Principles for Creating Accessible Web Applications",
    description:
        "Learn about design principles and techniques for creating web applications that are accessible to all users, including those with disabilities.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 4, 10),
    status: StatusEnum.relevant,
    tags: const [Tag.backend],
  ),
  PostModel(
    id: '5fdbff96-9e90-4da5-8c1e-4a2edbced28e',
    title: "Building Real-Time Chat Applications with Socket.io",
    description:
        "A step-by-step tutorial on building real-time chat applications using Socket.io and Node.js.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 4, 8),
    status: StatusEnum.recent,
    tags: const [Tag.frontend],
  ),
  PostModel(
    id: '40f82d8b-d47b-4d85-a046-0c8d32432029',
    title: "Exploring the Latest Trends in UI/UX Design",
    description:
        "Stay updated with the latest trends and innovations in UI/UX design for creating engaging and user-friendly digital experiences.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 4, 5),
    status: StatusEnum.recent,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: 'fb42d6eb-81e7-4b0d-b449-417bf2f3cc99',
    title: "Deploying Web Applications with Docker and Kubernetes",
    description:
        "Learn how to deploy and manage web applications efficiently using Docker containers and Kubernetes orchestration.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 4, 2),
    status: StatusEnum.recent,
    tags: const [Tag.database, Tag.backend],
  ),
  PostModel(
    id: 'dd39b178-e5fa-4c1e-b5f8-4cfd7b73a048',
    title: "Best Practices for Secure Software Development",
    description:
        "Discover best practices and techniques for ensuring the security of your software applications throughout the development lifecycle.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 3, 30),
    status: StatusEnum.recent,
    tags: const [Tag.frontend],
  ),
  PostModel(
    id: '40c3e1f2-527e-40d3-a2c6-6a1a2f3f5738',
    title: "Introduction to Microservices Architecture",
    description:
        "An introductory guide to microservices architecture and its benefits for building scalable and resilient applications.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 3, 27),
    status: StatusEnum.relevant,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: '0b82c8f8-f34c-44ec-a041-cf0549b90b74',
    title: "Understanding the Fundamentals of Object-Oriented Programming",
    description:
        "Gain a deeper understanding of the principles and concepts of object-oriented programming (OOP) and how to apply them in your projects.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 3, 25),
    status: StatusEnum.recent,
    tags: const [Tag.backend],
  ),
  PostModel(
    id: '2f163c3d-d84a-4532-a8e1-0c293aeecdb0',
    title: "Exploring Modern Database Technologies: NoSQL vs SQL",
    description:
        "An in-depth comparison of NoSQL and SQL databases, their strengths, weaknesses, and use cases in modern application development.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 3, 22),
    status: StatusEnum.recent,
    tags: const [Tag.database],
  ),
  PostModel(
    id: 'd773fbb8-87d0-4e8f-8cbb-62b4cbf9784f',
    title: "Introduction to Progressive Web Apps (PWAs)",
    description:
        "An introduction to Progressive Web Apps (PWAs) and their capabilities for delivering native-like experiences on the web.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 3, 20),
    status: StatusEnum.relevant,
    tags: const [Tag.frontend],
  ),
  PostModel(
    id: 'ed2184f1-1dcf-4207-b2ef-d7a0248bc79e',
    title: "The Importance of Test-Driven Development (TDD)",
    description:
        "Learn about the benefits and importance of adopting a Test-Driven Development (TDD) approach in software development.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 3, 17),
    status: StatusEnum.recent,
    tags: const [Tag.mobile, Tag.design],
  ),
  PostModel(
    id: '4b83fc39-1d98-4389-8739-7d6c178d92ea',
    title: "Mastering CSS Grid Layouts",
    description:
        "A comprehensive guide to mastering CSS Grid Layouts for building complex and responsive web layouts.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 3, 15),
    status: StatusEnum.recent,
    tags: const [Tag.backend],
  ),
  PostModel(
    id: 'b3e0212c-c6cf-4660-90cc-858e62c38351',
    title: "Exploring Modern JavaScript Frameworks: Angular vs React vs Vue.js",
    description:
        "An overview and comparison of popular JavaScript frameworks - Angular, React, and Vue.js - to help you choose the right one for your project.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 3, 12),
    status: StatusEnum.recent,
    tags: const [Tag.frontend],
  ),
  PostModel(
    id: 'e08c6ff1-7609-4b65-8186-3b8c5c6ae611',
    title: "Building Secure Authentication Systems with OAuth 2.0",
    description:
        "A guide to implementing OAuth 2.0 for secure authentication and authorization in your applications.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 3, 10),
    status: StatusEnum.relevant,
    tags: const [Tag.database],
  ),
  PostModel(
    id: 'b29d5d99-6188-4d3d-a432-5b4ae8b0cbe4',
    title: "Building Scalable Mobile Apps with Flutter",
    description:
        "Discover how to build scalable and performant mobile applications using the Flutter framework.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 3, 8),
    status: StatusEnum.recent,
    tags: const [Tag.frontend, Tag.backend],
  ),
  PostModel(
    id: '0f999fe3-87c5-4234-859b-2a347e3b845e',
    title: "Securing Your Backend APIs with OAuth 2.0",
    description:
        "A comprehensive guide to implementing OAuth 2.0 for securing your backend APIs against unauthorized access.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 3, 5),
    status: StatusEnum.recent,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: '82d1c7cb-4d93-4040-b5f5-35c6c115d517',
    title: "Exploring the Latest Trends in DevOps",
    description:
        "Stay updated with the latest trends and practices in DevOps for improving collaboration, automation, and deployment processes.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 3, 2),
    status: StatusEnum.relevant,
    tags: const [Tag.database],
  ),
  PostModel(
    id: 'cf7a605e-5f85-4e8d-85b8-d2ac947bdf65',
    title: "Mastering React Native for Cross-Platform App Development",
    description:
        "Learn how to leverage the power of React Native for building native cross-platform mobile applications with JavaScript and React.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 2, 28),
    status: StatusEnum.recent,
    tags: const [Tag.frontend],
  ),
  PostModel(
    id: 'd86b88a1-58a4-44e7-8490-70f67428cbd1',
    title: "Introduction to Modern JavaScript: ES6 and Beyond",
    description:
        "An introduction to modern JavaScript features introduced in ECMAScript 6 (ES6) and beyond, including arrow functions, template literals, and more.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 2, 25),
    status: StatusEnum.recent,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: 'c6f8bfee-3945-4b8b-978a-7755f20a4429',
    title: "Best Practices for Building RESTful APIs",
    description:
        "Discover best practices and guidelines for designing and implementing RESTful APIs for your web applications.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 2, 23),
    status: StatusEnum.recent,
    tags: const [Tag.database],
  ),
  PostModel(
    id: '5efedff2-b317-4b5e-a779-4298be69e9e8',
    title: "Exploring the Fundamentals of Cloud Computing",
    description:
        "An introductory guide to cloud computing fundamentals, including infrastructure as a service (IaaS), platform as a service (PaaS), and software as a service (SaaS).",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 2, 20),
    status: StatusEnum.relevant,
    tags: const [Tag.frontend, Tag.backend],
  ),
  PostModel(
    id: '7887d9c3-97b7-4b3d-8c77-14c1f3a9e8de',
    title: "Getting Started with Vue.js for Frontend Development",
    description:
        "A beginner's guide to getting started with Vue.js for building interactive and reactive web interfaces.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 2, 18),
    status: StatusEnum.recent,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: '8db80f88-1e60-4d3b-b946-e6c54c022f75',
    title: "Optimizing Mobile App Performance for Battery Life",
    description:
        "Learn how to optimize mobile app performance to minimize battery consumption and improve user experience on mobile devices.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 2, 15),
    status: StatusEnum.recent,
    tags: const [Tag.database],
  ),
  PostModel(
    id: '03f4db33-5b24-4ecb-a2d3-b2782f120a90',
    title: "Introduction to Serverless Architecture",
    description:
        "An overview of serverless architecture and its benefits for building scalable and cost-effective applications without managing servers.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 2, 13),
    status: StatusEnum.relevant,
    tags: const [Tag.frontend],
  ),
  PostModel(
    id: 'f6b4ec1c-70b8-42cb-81c5-c780a4e43793',
    title: "Understanding the Basics of Machine Learning",
    description:
        "An introductory guide to machine learning concepts and algorithms, including supervised learning, unsupervised learning, and deep learning.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 2, 10),
    status: StatusEnum.recent,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: '10a1d8e7-3140-432f-87b2-8d72ea6249c5',
    title: "Deploying Applications to AWS with Elastic Beanstalk",
    description:
        "Learn how to deploy and manage applications on AWS using Elastic Beanstalk, a fully managed service for deploying web applications and services.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 2, 8),
    status: StatusEnum.recent,
    tags: const [Tag.backend],
  ),
  PostModel(
    id: '3763d7f7-b232-44b5-b6b6-8ffbc1979052',
    title: "Building Real-Time Collaborative Applications with Firebase",
    description:
        "A step-by-step tutorial on building real-time collaborative applications using Firebase, Google's mobile platform for building web and mobile applications.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 2, 5),
    status: StatusEnum.relevant,
    tags: const [Tag.database],
  ),
  PostModel(
    id: '3a26f23e-8b9f-438a-b197-bc4863cda1b4',
    title: "Optimizing SQL Queries for Database Performance",
    description:
        "Learn how to optimize SQL queries and database performance by understanding query execution plans, indexes, and query tuning techniques.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 2, 3),
    status: StatusEnum.recent,
    tags: const [Tag.frontend],
  ),
  PostModel(
    id: '6cf73321-9872-4b8c-86a4-2519df2a1138',
    title: "Introduction to Microfrontend Architecture",
    description:
        "An overview of microfrontend architecture and its benefits for breaking down large frontend applications into smaller, more manageable parts.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 1, 31),
    status: StatusEnum.recent,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: 'd8031d97-9fc0-4adf-97b4-0b6bfb929df6',
    title: "Building Interactive Data Visualizations with D3.js",
    description:
        "Learn how to create interactive data visualizations for the web using D3.js, a JavaScript library for manipulating documents based on data.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 1, 28),
    status: StatusEnum.relevant,
    tags: const [Tag.backend],
  ),
  PostModel(
    id: 'd3538505-3b1c-44a6-b87d-345246cddfd7',
    title: "Securing Web Applications with Content Security Policy (CSP)",
    description:
        "A comprehensive guide to implementing Content Security Policy (CSP) to mitigate common web security vulnerabilities such as XSS and data injection attacks.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 1, 25),
    status: StatusEnum.recent,
    tags: const [Tag.frontend, Tag.database],
  ),
  PostModel(
    id: 'd33d5c56-82ae-498a-93d1-405fc0c603de',
    title: "Exploring Functional Programming with Haskell",
    description:
        "An introduction to functional programming concepts and the Haskell programming language, including pure functions, immutability, and higher-order functions.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 1, 23),
    status: StatusEnum.recent,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: 'be8f25b3-f0d0-4851-bfa3-4a339e56f60f',
    title: "Introduction to Automated Testing with Selenium",
    description:
        "Learn how to automate web browser testing using Selenium WebDriver, an open-source tool for automating web application testing across different browsers.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 1, 20),
    status: StatusEnum.relevant,
    tags: const [Tag.backend],
  ),
  PostModel(
    id: '96fdc2b1-8771-4a9a-bd2c-5bcda540946e',
    title: "Scaling Your Infrastructure with AWS Lambda and API Gateway",
    description:
        "Discover how to build scalable and cost-effective serverless applications using AWS Lambda and API Gateway for handling compute and API requests.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 1, 18),
    status: StatusEnum.recent,
    tags: const [Tag.frontend],
  ),
  PostModel(
    id: 'bbf3bb0b-65f1-4a3f-9fcb-d0e26ba7eae2',
    title: "Implementing Continuous Integration and Continuous Deployment (CI/CD)",
    description:
        "A step-by-step guide to implementing CI/CD pipelines for automating software delivery and deployment processes.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 1, 15),
    status: StatusEnum.recent,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: '504b0a76-4608-4a47-b923-f0b4dd45b604',
    title: "Exploring the Fundamentals of Blockchain Technology",
    description:
        "An introductory guide to blockchain technology and its applications beyond cryptocurrencies, including smart contracts and decentralized applications (DApps).",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 1, 12),
    status: StatusEnum.relevant,
    tags: const [Tag.backend, Tag.database],
  ),
  PostModel(
    id: 'e87f6b43-bc52-4e4d-81fa-9c317a7e66d0',
    title: "Building Progressive Web Apps (PWAs) with Angular",
    description:
        "Learn how to build Progressive Web Apps (PWAs) using Angular for delivering native-like experiences on the web.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 1, 10),
    status: StatusEnum.recent,
    tags: const [Tag.frontend],
  ),
  PostModel(
    id: 'd6ccfe5c-8f62-498e-83d0-62d0aabbce9f',
    title: "Introduction to Data Science and Big Data Analytics",
    description:
        "An overview of data science and big data analytics concepts, tools, and techniques for extracting insights from large datasets.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 1, 7),
    status: StatusEnum.recent,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: '16fc00e3-72cc-4c34-93d5-43e5b2360eeb',
    title: "Securing Your Web Applications with HTTPS",
    description:
        "A comprehensive guide to securing your web applications with HTTPS by configuring SSL/TLS certificates and enforcing secure communication protocols.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 1, 5),
    status: StatusEnum.relevant,
    tags: const [Tag.backend],
  ),
  PostModel(
    id: '68e86eeb-18db-49ee-8ed6-0fdf36bbf6e0',
    title: "Optimizing React Applications with Redux",
    description:
        "Learn how to manage application state efficiently in React applications using Redux, a predictable state container.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2024, 1, 2),
    status: StatusEnum.recent,
    tags: const [Tag.frontend, Tag.database],
  ),
  PostModel(
    id: 'a624e7fb-f2c5-4cbb-9535-9c6f4c358de2',
    title: "Introduction to Cloud-Native Architecture",
    description:
        "An introduction to cloud-native architecture and its principles for building scalable, resilient, and maintainable applications in the cloud.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 12, 30),
    status: StatusEnum.recent,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: '0581c2a8-109b-4c89-b0b4-4951cf46b5ac',
    title: "Exploring Data Visualization Techniques with Python",
    description:
        "Discover various data visualization techniques using Python libraries such as Matplotlib, Seaborn, and Plotly for creating insightful visualizations.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 12, 28),
    status: StatusEnum.relevant,
    tags: const [Tag.backend],
  ),
  PostModel(
    id: 'cbdb1005-9e7e-43fa-b2fa-3912067a9876',
    title: "Implementing Multi-Factor Authentication (MFA)",
    description:
        "A guide to implementing multi-factor authentication (MFA) for enhancing the security of user accounts by requiring multiple forms of verification.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 12, 25),
    status: StatusEnum.recent,
    tags: const [Tag.frontend],
  ),
  PostModel(
    id: '58e22926-fb08-40c2-9d37-6efbb658eb24',
    title: "Best Practices for Cloud Security and Compliance",
    description:
        "Discover best practices and strategies for ensuring cloud security and compliance with industry regulations and standards.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 12, 23),
    status: StatusEnum.recent,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: 'fd83014d-812f-44da-9baf-621b7b384889',
    title: "Introduction to Web Accessibility Standards (WCAG)",
    description:
        "An overview of web accessibility standards defined by the Web Content Accessibility Guidelines (WCAG) for creating inclusive and accessible web content.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 12, 20),
    status: StatusEnum.relevant,
    tags: const [Tag.backend, Tag.database],
  ),
  PostModel(
    id: '2212ddfa-06c6-4e18-bc45-183b84720929',
    title: "Building Real-Time Data Streaming Applications with Kafka",
    description:
        "A comprehensive guide to building real-time data streaming applications using Apache Kafka for handling large volumes of data with low latency.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 12, 18),
    status: StatusEnum.recent,
    tags: const [Tag.frontend],
  ),
  PostModel(
    id: 'fb28010f-71da-4f7a-9f8d-53a3d7b729df',
    title: "Optimizing Mobile App User Experience (UX)",
    description:
        "Learn how to optimize mobile app user experience (UX) by implementing user-friendly navigation, responsive layouts, and intuitive interactions.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 12, 15),
    status: StatusEnum.recent,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: '35063b76-8cb0-4a96-83c0-27711923578e',
    title: "Introduction to Reactive Programming with RxJS",
    description:
        "An introduction to reactive programming concepts and the RxJS library for building asynchronous and event-driven applications in JavaScript.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 12, 13),
    status: StatusEnum.relevant,
    tags: const [Tag.backend],
  ),
  PostModel(
    id: '3731c0ff-f4ed-4c57-bf6a-e2d600c12672',
    title: "Scaling Your Web Applications with CDN (Content Delivery Network)",
    description:
        "Discover how to scale your web applications globally and improve performance by leveraging Content Delivery Networks (CDNs) for caching and delivering content.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 12, 10),
    status: StatusEnum.recent,
    tags: const [Tag.frontend],
  ),
  PostModel(
    id: 'aaf5b8a3-bbab-4a02-8a89-2edb75eaf83c',
    title: "Exploring Data Structures and Algorithms with Python",
    description:
        "An overview of common data structures and algorithms implemented in Python for solving various computational problems efficiently.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 12, 8),
    status: StatusEnum.recent,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: '8edb0507-93f8-4c1f-bc6c-0f8e5d8c69cb',
    title: "Implementing Single Sign-On (SSO) for Web Applications",
    description:
        "A guide to implementing Single Sign-On (SSO) for enabling users to authenticate once and access multiple web applications seamlessly.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 12, 5),
    status: StatusEnum.relevant,
    tags: const [Tag.backend],
  ),
  PostModel(
    id: 'a30b5e5b-7602-4938-a51a-6b16f0bcd268',
    title: "Best Practices for Securing Containerized Applications",
    description:
        "Discover best practices and security measures for securing containerized applications deployed using container orchestration platforms such as Kubernetes.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 12, 2),
    status: StatusEnum.recent,
    tags: const [Tag.frontend, Tag.database],
  ),
  PostModel(
    id: 'fbcaa7a7-9ae4-4389-b1ee-6aef6d9e5e6b',
    title: "Introduction to Natural Language Processing (NLP)",
    description:
        "An introductory guide to natural language processing (NLP) and its applications for processing and analyzing human language data.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 11, 30),
    status: StatusEnum.recent,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: '34245df5-7614-42ed-8a55-38f683646eb4',
    title: "Building Scalable Web Applications with Microservices",
    description:
        "Learn how to design and implement scalable web applications using microservices architecture for modularizing and decoupling application components.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 11, 28),
    status: StatusEnum.relevant,
    tags: const [Tag.backend],
  ),
  PostModel(
    id: '888f51ba-7df8-4d3e-aeda-e7221e9d2d1c',
    title: "Optimizing SEO for Web Applications",
    description:
        "A comprehensive guide to optimizing Search Engine Optimization (SEO) for web applications by improving site structure, content quality, and performance.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 11, 25),
    status: StatusEnum.recent,
    tags: const [Tag.frontend],
  ),
  PostModel(
    id: '0984409b-1c2e-4342-bfd5-df4526f1a36a',
    title: "Introduction to Infrastructure as Code (IaC)",
    description:
        "An overview of Infrastructure as Code (IaC) principles and practices for automating the provisioning and management of infrastructure using code.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 11, 23),
    status: StatusEnum.recent,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: '0fa27b84-5ab7-4f8b-a2b1-67ae88b127d8',
    title: "Exploring Data Analytics with Apache Spark",
    description:
        "Discover how to perform large-scale data analytics and processing using Apache Spark, a fast and distributed data processing engine.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 11, 20),
    status: StatusEnum.relevant,
    tags: const [Tag.backend],
  ),
  PostModel(
    id: 'fa8394b5-8b16-4345-8f2c-d0cb7853dbe8',
    title: "Securing Microservices Communication with Mutual TLS",
    description:
        "A guide to securing communication between microservices using Mutual Transport Layer Security (TLS) for encrypting data in transit and ensuring authentication.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 11, 18),
    status: StatusEnum.recent,
    tags: const [Tag.frontend],
  ),
  PostModel(
    id: 'd2d59f4b-c67d-4b77-89a3-b55ed4fef134',
    title: "Introduction to Cloud-Native Databases",
    description:
        "An overview of cloud-native databases designed for modern cloud environments, including managed databases, NoSQL databases, and serverless databases.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 11, 15),
    status: StatusEnum.recent,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: '0abf22da-5e1c-45eb-bc57-57db9b8dc176',
    title: "Building Progressive Web Apps (PWAs) with React",
    description:
        "Learn how to build Progressive Web Apps (PWAs) using React for delivering fast, reliable, and engaging experiences on the web.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 11, 13),
    status: StatusEnum.relevant,
    tags: const [Tag.backend],
  ),
  PostModel(
    id: 'd055d37f-d44a-4e43-8b29-4fc760b366c3',
    title: "Introduction to A/B Testing for Web Applications",
    description:
        "An introductory guide to A/B testing for optimizing web applications by comparing different versions and measuring user engagement and conversion rates.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 11, 10),
    status: StatusEnum.recent,
    tags: const [Tag.frontend, Tag.database],
  ),
  PostModel(
    id: '13de920f-3402-4f36-9c5d-089ccabf9bcf',
    title: "Exploring Cloud-Native Security Best Practices",
    description:
        "Discover best practices and security measures for ensuring the security of cloud-native applications deployed in containerized and serverless environments.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 11, 8),
    status: StatusEnum.recent,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: 'fc8410e7-5f52-4744-b84e-9ea89a5a7ea2',
    title: "Optimizing Web Performance with HTTP/2 and CDN",
    description:
        "Learn how to optimize web performance by leveraging HTTP/2 protocol and Content Delivery Networks (CDNs) for faster page load times and improved user experience.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 11, 5),
    status: StatusEnum.relevant,
    tags: const [Tag.backend],
  ),
  PostModel(
    id: '7cc2ab2d-81c8-4cb5-b71d-074be1f830ae',
    title: "Introduction to TensorFlow for Machine Learning",
    description:
        "An introduction to TensorFlow, an open-source machine learning framework developed by Google, for building and training machine learning models.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 11, 3),
    status: StatusEnum.recent,
    tags: const [Tag.frontend],
  ),
  PostModel(
    id: 'b6bdf678-1191-448e-a70a-5d51f13e24d3',
    title: "Implementing Role-Based Access Control (RBAC) for Web Applications",
    description:
        "A guide to implementing Role-Based Access Control (RBAC) for managing user permissions and access rights in web applications.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 11, 1),
    status: StatusEnum.recent,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: '34be0ef9-d8ef-4e18-b953-95e803784e36',
    title: "Exploring Cloud-Native Monitoring and Observability",
    description: "Discover monitoring and observability practices and tools for gainin",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 10, 30),
    status: StatusEnum.relevant,
    tags: const [Tag.backend],
  ),
  PostModel(
    id: '8cbf2e5c-6c75-4a8d-8a56-2758d3b19a4b',
    title: "Introduction to Docker Swarm for Container Orchestration",
    description:
        "An introductory guide to Docker Swarm for orchestrating and managing containerized applications across a cluster of Docker hosts.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 10, 28),
    status: StatusEnum.recent,
    tags: const [Tag.frontend, Tag.database],
  ),
  PostModel(
    id: '8a273a29-f6d4-4a76-b026-6e5d4c97c8b5',
    title: "Optimizing React Native Performance for Mobile Apps",
    description:
        "Learn how to optimize the performance of React Native mobile applications by minimizing rendering times and reducing memory usage.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 10, 25),
    status: StatusEnum.recent,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: 'abf9df76-b6ab-46ee-8d43-73adf67c4315',
    title: "Exploring Blockchain Use Cases Beyond Cryptocurrencies",
    description:
        "Discover real-world use cases of blockchain technology beyond cryptocurrencies, including supply chain management, identity verification, and voting systems.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 10, 23),
    status: StatusEnum.relevant,
    tags: const [Tag.backend],
  ),
  PostModel(
    id: 'a2fa2345-77ad-4f3d-9d88-5b317f6e21d1',
    title: "Building Serverless Applications with AWS Lambda",
    description:
        "A comprehensive guide to building serverless applications using AWS Lambda for executing code without provisioning or managing servers.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 10, 20),
    status: StatusEnum.recent,
    tags: const [Tag.frontend],
  ),
  PostModel(
    id: 'f0c6b01f-7712-4093-917b-dc94bfbf2829',
    title: "Introduction to Full-Stack Web Development",
    description:
        "An overview of full-stack web development, covering both frontend and backend technologies and the skills required to become a full-stack developer.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 10, 18),
    status: StatusEnum.recent,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: '105e2bb5-3c9e-49d8-85de-75ba78a1f2bb',
    title: "Exploring GraphQL Subscriptions for Real-Time Data Updates",
    description:
        "Learn how to implement GraphQL subscriptions for enabling real-time data updates in your web applications using WebSocket connections.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 10, 15),
    status: StatusEnum.relevant,
    tags: const [Tag.backend],
  ),
  PostModel(
    id: 'ca087a2d-f535-45a5-8902-74749d45db36',
    title: "Implementing OAuth 2.0 Authorization Code Flow",
    description:
        "A step-by-step guide to implementing OAuth 2.0 Authorization Code Flow for securely authorizing users and obtaining access tokens for API access.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 10, 13),
    status: StatusEnum.recent,
    tags: const [Tag.frontend],
  ),
  PostModel(
    id: 'a91b22c1-8f65-4721-a7e6-90d8b22bc690',
    title: "Best Practices for Code Review in Software Development",
    description:
        "Discover best practices and guidelines for conducting effective code reviews in software development teams to improve code quality and collaboration.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 10, 10),
    status: StatusEnum.recent,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: '0a340f4e-2342-49e5-9e8f-5b7f0b556a25',
    title: "Introduction to Kubernetes for Container Orchestration",
    description:
        "An introductory guide to Kubernetes, an open-source container orchestration platform, for automating deployment, scaling, and management of containerized applications.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 10, 8),
    status: StatusEnum.relevant,
    tags: const [Tag.backend, Tag.database],
  ),
  PostModel(
    id: '08c79e34-2744-4525-8a5a-10675d1364ae',
    title: "Exploring the Principles of Clean Code",
    description:
        "Learn about the principles of clean code, including readability, maintainability, and simplicity, and how to apply them in your software development projects.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 10, 5),
    status: StatusEnum.recent,
    tags: const [Tag.frontend],
  ),
  PostModel(
    id: '3fbd024b-7304-4da2-bb12-44f13fe3c4e0',
    title: "Building Real-Time Chat Applications with Firebase",
    description:
        "A step-by-step tutorial on building real-time chat applications using Firebase, Google's mobile platform for building web and mobile applications.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 10, 3),
    status: StatusEnum.recent,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: '270a1b52-96d3-42b5-b0a8-c0de1fa6a170',
    title: "Optimizing Database Performance with Indexing",
    description:
        "Learn how to improve database performance by creating indexes on frequently queried columns and optimizing query execution plans.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 10, 1),
    status: StatusEnum.relevant,
    tags: const [Tag.backend],
  ),
  PostModel(
    id: 'd9d7402f-4b67-4f4e-abe2-e7ff2144d7b7',
    title: "Introduction to Reactive Microservices Architecture",
    description:
        "An overview of reactive microservices architecture and its principles for building responsive, resilient, and elastic distributed systems.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 9, 28),
    status: StatusEnum.recent,
    tags: const [Tag.frontend, Tag.database],
  ),
  PostModel(
    id: '72c4b112-c019-4a8a-b4e3-01a23462047c',
    title: "Securing Cloud-Native Applications with AWS Identity and Access Management (IAM)",
    description:
        "A guide to securing cloud-native applications deployed on AWS using Identity and Access Management (IAM) for managing user permissions and access control.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 9, 26),
    status: StatusEnum.recent,
    tags: const [Tag.mobile],
  ),
  PostModel(
    id: 'a1c1b4a1-289f-4bda-8429-5b450ff5703c',
    title: "Best Practices for Building Cross-Platform Mobile Apps",
    description:
        "Discover best practices and strategies for building cross-platform mobile applications using frameworks such as Flutter, React Native, and Xamarin.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 9, 23),
    status: StatusEnum.relevant,
    tags: const [Tag.backend],
  ),
  PostModel(
    id: '90da305f-6040-4d98-95f4-60af5015d2c6',
    title: "Introduction to WebAssembly: Building High-Performance Web Apps",
    description:
        "An introduction to WebAssembly (Wasm) and its benefits for building high-performance web applications with near-native performance.",
    photoUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg',
    date: DateTime(2023, 9, 20),
    status: StatusEnum.recent,
    tags: const [Tag.frontend],
  ),
];
