import { Injectable } from '@nestjs/common';
import Product from '../entity/product.entity';
import { FindOptionsWhere, ILike, Repository } from 'typeorm';
import { InjectRepository } from '@nestjs/typeorm';
import { FindProductDto } from './dto/find-product.dto';

@Injectable()
export class ProductService {
  constructor(
    @InjectRepository(Product)
    private readonly cityRepository: Repository<Product>,
  ) {}

  async findAll(filter: FindProductDto): Promise<Product[]> {
    const { name, description } = filter;
    const conditions: FindOptionsWhere<Product> | [FindOptionsWhere<Product>] =
      {
        ...(name && { name: ILike(`%${name}%`) }),
        ...(description && { description: ILike(`%${description}%`) }),
      };
    return this.cityRepository.find({
      where: conditions,
      relations: ['category'],
      select: ['id', 'name'],
    });
  }
}
