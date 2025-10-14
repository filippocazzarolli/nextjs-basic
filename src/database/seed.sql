INSERT INTO product (name, description) VALUES
                                            ('NeuroLink Pro X', 'A brain-computer interface device that allows you to control your smart home devices with thoughts alone. Features AI-powered gesture prediction and 24-hour battery life.'),
                                            ('HoloDesk 360', 'Holographic workspace projector that creates a 3D virtual display in mid-air. Supports up to 8 virtual monitors and includes gesture-based controls.'),
                                            ('SoundWave AirPods Ultra', 'Wireless earbuds with real-time language translation, AI noise cancellation, and biometric health monitoring. Battery life: 48 hours with charging case.'),
                                            ('QuantumCore Laptop Z9', 'Ultra-thin laptop with quantum processor, 128GB RAM, holographic keyboard, and self-cooling nanotechnology. Weight: only 1.2 lbs.'),
                                            ('SmartMirror Vision+', 'Interactive bathroom mirror with health diagnostics, AR makeup try-on, skin analysis, and integrated voice assistant. Includes morning news briefing and weather display.'),
                                            ('FlexScreen Fold 7', 'Fully foldable smartphone that expands from 4" to 12" screen. Features graphene battery technology lasting 5 days and 200MP AI camera.'),
                                            ('DroneCam SkyEye 5000', 'AI-powered autonomous drone with 8K 360° camera, obstacle avoidance, and auto-follow mode. Flight time: 2 hours. Perfect for content creators.'),
                                            ('BioCharge Watch Elite', 'Smartwatch that charges from your body heat and movement. Features continuous health monitoring, ECG, blood oxygen, and stress tracking.'),
                                            ('RoboVac CleanSweep AI', 'Self-emptying robot vacuum with AI room mapping, automatic cleaning solution dispensing, and UV sterilization. Can climb stairs.'),
                                            ('PhotoLens SmartGlasses X', 'AR glasses with built-in 4K camera, real-time navigation overlay, instant translation, and facial recognition. Prescription lens compatible.'),
                                            ('SecureVault Biometric Drive', 'Portable 10TB SSD with fingerprint and retinal scanner, military-grade encryption, and self-destruct mechanism. Transfer speed: 5GB/s.'),
                                            ('EcoCharge Solar Power Bank', '100,000mAh solar-powered battery bank with wireless charging pad. Can charge 5 devices simultaneously. Waterproof and shockproof design.'),
                                            ('VirtualStudio 4D Camera', 'Professional 360° camera with depth sensing for 3D content creation. Features AI-powered auto-editing and live streaming to 20 platforms simultaneously.'),
                                            ('KeyboardMaster Adaptive Pro', 'Mechanical keyboard with e-ink keys that change based on application. Features programmable macro keys, RGB lighting, and AI-powered typing assistance.'),
                                            ('NetBoost Mesh Router X', 'AI-optimized mesh router system with quantum encryption, covering 10,000 sq ft. Features automatic threat detection and 10Gbps speeds.');

INSERT INTO category (name) VALUES
                                ('Wearable Technology'),
                                ('Computing & Productivity'),
                                ('Smart Home & IoT'),
                                ('Mobile & Communication'),
                                ('Photography & Content Creation');


-- Wearable Technology (category_id: 1)
INSERT INTO category_products ("categoryId", "productId") VALUES
                                                              (1, 3),  -- SoundWave AirPods Ultra
                                                              (1, 8),  -- BioCharge Watch Elite
                                                              (1, 10); -- PhotoLens SmartGlasses X

-- Computing & Productivity (category_id: 2)
INSERT INTO category_products ("categoryId", "productId") VALUES
                                                              (2, 2),  -- HoloDesk 360
                                                              (2, 4),  -- QuantumCore Laptop Z9
                                                              (2, 14); -- KeyboardMaster Adaptive Pro

-- Smart Home & IoT (category_id: 3)
INSERT INTO category_products ("categoryId", "productId") VALUES
                                                              (3, 2),  -- HoloDesk 360
                                                              (3, 5),  -- SmartMirror Vision+
                                                              (3, 9),  -- RoboVac CleanSweep AI
                                                              (3, 15); -- NetBoost Mesh Router X

-- Mobile & Communication (category_id: 4)
INSERT INTO category_products ("categoryId", "productId") VALUES
                                                              (4, 1),  -- NeuroLink Pro X
                                                              (4, 6),  -- FlexScreen Fold 7
                                                              (4, 12); -- EcoCharge Solar Power Bank

-- Photography & Content Creation (category_id: 5)
INSERT INTO category_products ("categoryId", "productId") VALUES
                                                              (5, 7),  -- DroneCam SkyEye 5000
                                                              (5, 11), -- SecureVault Biometric Drive
                                                              (5, 13); -- VirtualStudio 4D Camera