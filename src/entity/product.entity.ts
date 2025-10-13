import { Column, Entity, ManyToMany, PrimaryGeneratedColumn } from 'typeorm';
import { Category } from './category.entity';

@Entity()
class Product {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  name: string;

  @Column()
  description: string;

  @ManyToMany(() => Category, (category) => category.product)
  category: Category[];
}

export default Product;
