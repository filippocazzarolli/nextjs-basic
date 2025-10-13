import { Controller, Get, Query } from '@nestjs/common';
import { ProductService } from './product.service';
import { Product } from '../entity/product.entity';
import { FindProductDto } from './dto/find-product.dto';

@Controller('product')
export class ProductController {
  constructor(private readonly productService: ProductService) {}

  @Get()
  async findAll(@Query() query: FindProductDto): Promise<Product[]> {
    return this.productService.findAll(query);
  }
}
